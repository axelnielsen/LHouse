class Subsubaccount < ActiveRecord::Base
	attr_accessible :name
	belongs_to :subaccount
end
