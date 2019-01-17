class RemoveColumnDocumentFromDocument < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :documents, :document_id
  end
end
