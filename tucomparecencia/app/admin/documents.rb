ActiveAdmin.register Document do
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

  permit_params :name, :description, :price

  index do
    column :id
    column :name
    column :description
    column :price
    column :created_at


    actions
  end

  form do |f|
    inputs 'Agregar un nuevo documento' do
      input :name
      input :description
      input :price
    end
    actions
  end

  filter :name
end
