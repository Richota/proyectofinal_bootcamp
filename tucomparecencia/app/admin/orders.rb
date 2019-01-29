ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    column :id
    column :documento do |order|
      order.document.name
    end
    column :price
    column :metodo_pago do |order|
      order.billing.payment_method
    end
    column :created_at
    column :usuario do |order|
      order.user.email
    end

  end

  filter :created_at
  filter :user

end
