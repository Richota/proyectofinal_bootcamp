class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  validates :password, presence: true, length: {minimum: 6, maximum: 120}, on: :create
  validates :password, length: {minimum: 6, maximum: 120}, on: :update, allow_blank: true
  validates :name, presence: true, on: :create
  validates :name, presence: false, on: :update, allow_blank: true
  validates :phone, presence: false
  validates :address, presence: false
  validates :commune_id, presence: false, on: :create
  validates :region_id, presence: false, on: :create

  belongs_to :commune
  belongs_to :region
  has_many :user_documents
  has_many :billings
  has_many :orders
  has_many :documents, through: :orders

  enum role: [:admin, :regularuser, :superuser]

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #     user.name = auth.info.name
  #   end
  # end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(name: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end
