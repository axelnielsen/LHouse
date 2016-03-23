class Profile < ActiveRecord::Base
	attr_accessible :name

	has_many :users

	def nombre
		name
	end
end
