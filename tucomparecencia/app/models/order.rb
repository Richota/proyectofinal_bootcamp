class Order < ApplicationRecord
  belongs_to :user
  belongs_to :document
  belongs_to :billing, optional: true
end
