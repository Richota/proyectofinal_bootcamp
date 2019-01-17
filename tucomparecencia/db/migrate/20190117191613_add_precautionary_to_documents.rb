class AddPrecautionaryToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :document, foreign_key: true
  end
end
