class CreatePrecautionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :precautionaries do |t|
      t.text :measure

      t.timestamps
    end
  end
end
