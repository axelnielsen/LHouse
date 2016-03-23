class StatusType < ActiveRecord::Base
	attr_accessible :nombre
	has_many :statuses
end
