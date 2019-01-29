class BillingsController < ApplicationController
  before_action :authenticate_user!

  def pre_pay
    order = current_user.orders.last
    # total = orders.pluck("price * quantity").sum()
    # items = orders.map do |oder|
    #   item = {}
    #   item[:name] = order.document.name
    #   item[:sku] = order.id.to_s
    #   item[:price] = order.price.to_s
    #   item[:currency] = 'USD'
    #   item[:quantity] = order.quantity
    #   item
    # end

    # Build Payment object
    @payment = PayPal::SDK::REST::Payment.new({
      :intent =>  "sale",
      :payer =>  {
        :payment_method =>  "paypal" },
      :redirect_urls => {
        :return_url => execute_billings_url,
        :cancel_url => "http://localhost:3000/" },
      :transactions =>  [{
        :item_list => {
          :items => [{
            :name => order.document.name,
            :sku => order.id.to_s,
            :price => order.price.to_s,
            :currency => "USD",
            :quantity => 1 }]},
        :amount =>  {
          :total =>  order.price,
          :currency =>  "USD" },
        :description =>  "This is the payment transaction description." }]})

    if @payment.create
      redirect_url = @payment.links.find{|v| v.method == "REDIRECT"}.href
      redirect_to redirect_url
    else
      ':('
    end
  end

  def execute
    paypal_payment = PayPal::SDK::REST::Payment.find(params[:paymentId])
    if paypal_payment.execute(payer_id: params[:PayerID])
      amount = paypal_payment.transactions.first.amount.total
      billing = Billing.create(
                user: current_user,
                code: paypal_payment.id,
                payment_method: 'paypal',
                amount: amount,
                currency: 'USD'
                )
      orders = current_user.orders.where(payed: false)
      orders.update_all(payed: true, billing_id: billing.id)
      redirect_to user_documents_path, notice: "La compra se realizó con éxito!"
    else
      render plain: "No se puedo generar el cobro en PayPal."
    end
  end

end
