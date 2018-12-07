class RemoveColumnFromUser < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :users, :rit
  end
end
