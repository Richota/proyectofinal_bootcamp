class AddColumnsToUserDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :user_documents, :measure1, :text
    add_column :user_documents, :measure2, :text
    add_column :user_documents, :measure3, :text
    add_reference :user_documents, :document, foreign_key: true
  end
end
