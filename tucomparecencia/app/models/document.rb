class Document < ApplicationRecord
  validates_uniqueness_of :name
  has_many :user_documents
  has_many :orders
  has_many :users, through: :orders

end
