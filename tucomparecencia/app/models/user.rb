class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  belongs_to :commune
  belongs_to :region
  has_many :user_documents
  has_many :billings
  has_many :orders
  has_many :documents, through: :orders

  enum role: [:admin, :regularuser, :superuser]
end
