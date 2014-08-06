class Admin < ActiveRecord::Base
	devise :database_authenticatable, :registerable, # :encryptable,
         :recoverable, :rememberable, :trackable, # :validatable
         authentication_keys: [:login]
	
end