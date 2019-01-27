class BillingsController < ApplicationController

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
        :return_url => "http://localhost:3000/payment/execute",
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

end
