class FixColumnRegions < ActiveRecord::Migration[5.2]
  def change
    rename_column :communes, :regions_id, :region_id
  end
end
