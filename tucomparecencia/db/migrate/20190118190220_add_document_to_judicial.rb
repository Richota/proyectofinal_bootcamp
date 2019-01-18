class AddDocumentToJudicial < ActiveRecord::Migration[5.2]
  def change
    add_reference :judicial_briefs, :document, foreign_key: true
  end
end
