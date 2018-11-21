class AddCommuneToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :commune, foreign_key: true
  end
end
