class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :nombre
      t.string :ordinal

      t.timestamps
    end
  end
end
