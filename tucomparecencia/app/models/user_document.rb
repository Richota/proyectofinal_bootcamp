class UserDocument < ApplicationRecord
  belongs_to :user
  belongs_to :document
  has_and_belongs_to_many :precautionaries
end
