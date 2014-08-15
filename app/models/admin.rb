class Admin < ActiveRecord::Base
	devise :database_authenticatable, :registerable, # :encryptable,
         :recoverable, :rememberable, :trackable, # :validatable
         authentication_keys: [:login, :password]

    before_create :hash_password

	before_update :hash_password, if: :password_changed?

	def hash_password
	    if self.password.blank?
	      self.password = self.password_was
	    else
	      self.password = Digest::MD5.hexdigest(self.password)
	    end
	end

	def valid_password?(password)
	    if self.password.present?
	      if ::Digest::MD5.hexdigest(password) == self.password
	        true
	      else
	        false
	      end
	    else
	      super
	    end
	end
	
end