class AddNewParametersToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :role, :integer
    add_column :users, :address, :text
  end
end
