class AddColumnToCommunes < ActiveRecord::Migration[5.2]
  def change
    add_column :communes, :region, :string
  end
end
