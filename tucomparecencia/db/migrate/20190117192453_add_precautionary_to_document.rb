class AddPrecautionaryToDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :precautionary, foreign_key: true
  end
end
