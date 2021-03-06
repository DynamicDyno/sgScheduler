class User < ActiveRecord::Base
  attr_accessible :password, :email, :username, :password_confirmation
  has_secure_password
  has_many :reservations

validates_uniqueness_of :email, :username
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
validates :password, length: { minimum: 6 }

before_save { |user| user.email = user.email.downcase }



end
