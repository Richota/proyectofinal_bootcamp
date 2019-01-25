class BillingsController < ApplicationController

  def pre_pay
    orders = current_user.orders.where(payed: false)
    total = orders.pluck("price * quantity").sum()
    items = orders.map do |oder|
      item = {}
      item[:name] = order.document.name
      item[:sku] = order.id.to_s
      item[:price] = order.price.to_s
      item[:currency] = 'USD'
      item[:quantity] = order.quantity
      item
    end

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
          :items => items
        },
        :amount =>  {
          :total =>  total,
          :currency =>  "USD" },
        :description =>  "Carro de compra." }]})

    render json: @payment.to_json
  end

end
