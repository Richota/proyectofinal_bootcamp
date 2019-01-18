class RemoveColumnsFromDocument < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :documents, :precautionary_id
    remove_column :documents, :child
    remove_column :documents, :rit
    remove_column :documents, :motive
    remove_column :documents, :user_id
  end
end
