class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  
         
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates_date :birthdate, on_or_before: lambda { Date.current }

  ## Validations
  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
  file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }

  ##...Avatar Attachment...##
  has_one_attached :avatar
  has_many :requests
  has_many :publications, through: :requests
  has_many :resenas
  has_one :chat #no se si es belong_to o has_one
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.full_name = auth.info.name
      user.avatar_url = auth.info.image
    end

  end
end
