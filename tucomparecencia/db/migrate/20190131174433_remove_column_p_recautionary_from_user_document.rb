class RemoveColumnPRecautionaryFromUserDocument < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :user_documents, :precautionary_id
  end
end
