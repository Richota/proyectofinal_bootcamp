class Commune < ApplicationRecord
  has_many :users
  belongs_to :region, dependent: :destroy
end
