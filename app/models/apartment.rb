class Apartment < ActiveRecord::Base

	attr_accessible   :name, :community_id, :m2
	belongs_to :community
	has_many :reservations

end
