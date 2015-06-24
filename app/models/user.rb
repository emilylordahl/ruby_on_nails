class User < ActiveRecord::Base

	has_secure_password
	has_and_belongs_to_many :colors, dependent: :destroy

	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :email, :email => {:strict_mode => true}
	validates :password, presence: true, length: { minimum: 8 }, 
		unless: :skip_password_validation # Allows updating user information without updating password
	validates :password_confirmation, presence: true, 
		unless: :skip_password_confirmation_validation # Allows updating user information without updating password
	validates :password_confirmation, confirmation: true

	# Allows updating user information without updating password
	attr_accessor :skip_password_validation, :skip_password_confirmation_validation

end
