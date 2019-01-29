class CreateUserDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_documents do |t|
      t.string :child
      t.string :rit
      t.text :motive
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
