class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :rit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
