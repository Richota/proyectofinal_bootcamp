class FixColumnNameFromCommunes < ActiveRecord::Migration[5.2]
  def change
    rename_column :communes, :name, :comuna
  end
end
