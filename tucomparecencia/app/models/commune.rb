class Commune < ApplicationRecord
  validates_uniqueness_of :comuna
  has_many :users
  belongs_to :region
end
