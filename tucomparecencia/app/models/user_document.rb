class UserDocument < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :user_documents
end
