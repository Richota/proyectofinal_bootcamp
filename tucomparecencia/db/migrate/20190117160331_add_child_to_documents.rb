class AddChildToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :child, :string
  end
end
