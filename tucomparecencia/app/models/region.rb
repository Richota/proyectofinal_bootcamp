class Region < ApplicationRecord
  validates_uniqueness_of :short_name
  has_many :communes
  has_many :users
end
