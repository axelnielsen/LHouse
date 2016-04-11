class Community < ActiveRecord::Base
	attr_accessible   :nombre, :address, :phone, :email, :website, :community_id, :userpass, :adminpass, :concierge

	has_many :users
	has_many :common_rooms
	has_many :bankaccounts
	has_many :vendors
	has_many :payableaccounts
	has_many :receivableaccounts
	has_many :journals
	
	def name
		nombre
	end
	def randompassuser	   
	   		p "u"+SecureRandom.urlsafe_base64(6)
	end
	def randompassadmin	   
	   		p "a"+SecureRandom.urlsafe_base64(6)
	end
	def randompassconcierge	   
	   		p "c"+SecureRandom.urlsafe_base64(6)
	end

end
