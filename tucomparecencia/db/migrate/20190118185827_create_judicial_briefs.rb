class CreateJudicialBriefs < ActiveRecord::Migration[5.2]
  def change
    create_table :judicial_briefs do |t|
      t.string :rit
      t.references :precautionary, foreign_key: true
      t.string :child
      t.text :motive
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
