class CommonRoom < ActiveRecord::Base

	attr_accessible   :name, :community_id
	belongs_to :community

end
