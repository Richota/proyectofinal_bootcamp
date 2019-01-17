class AddMotiveToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :motive, :text
  end
end
