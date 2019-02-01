class Region < ApplicationRecord
  has_many :communes, dependent: :destroy
  has_many :users
end
