class AddCaseToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :case, foreign_key: true
  end
end
