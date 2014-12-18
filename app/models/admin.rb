class Admin < ActiveRecord::Base
	devise :database_authenticatable, # :registerable, :encryptable,
         :recoverable, :rememberable, :trackable, # :validatable
         authentication_keys: [:login]

	def password=(new_password)
	      self.encrypted_password = Digest::MD5.hexdigest(new_password) if new_password
	end

	def valid_password?(password)
	    if password
	      if Digest::MD5.hexdigest(password) == self.encrypted_password
	        true
	      else
	        false
	      end
	    else
	      super
	    end
	end
	
end