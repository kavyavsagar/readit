class User < ActiveRecord::Base
	has_secure_password

	has_many :articles, dependent: :destroy
	
	validates :email, presence: true, length: {minimum: 3, maximum: 20}, uniqueness: true
	validates :password_digest, presence: true, length: {minimum: 6}
end