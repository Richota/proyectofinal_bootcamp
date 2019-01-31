class Precautionary < ApplicationRecord
  # has_and_belongs_to_many :user_documents

  def self.get_measure
    pluck(:measure)
  end
end
