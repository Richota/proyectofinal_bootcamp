class AddFKtoUserDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_documents, :precautionary, foreign_key: true
  end
end
