class RemoveColumnLastnameFromUser < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :users, :lastname
  end
end
