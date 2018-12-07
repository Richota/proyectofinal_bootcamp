class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :users, :case_id
  end
end
