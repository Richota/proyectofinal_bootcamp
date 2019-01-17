class Document < ApplicationRecord
  has_many :precautionaries
  belongs_to :user
end
