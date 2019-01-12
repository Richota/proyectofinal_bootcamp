class RemoveColumnFromCommune < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :communes, :region
  end
end
