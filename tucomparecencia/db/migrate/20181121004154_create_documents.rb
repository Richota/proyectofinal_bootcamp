class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
