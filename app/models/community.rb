class Community < ActiveRecord::Base
	attr_accessible   :nombre, :address, :phone, :email, :website, :community_id

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
end
