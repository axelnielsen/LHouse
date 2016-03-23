class Reservation < ActiveRecord::Base

	attr_accessible   :commonRoom_id, :initDate, :finDate, :initTime, :finTime, :apartment_id
	belongs_to :apartment
end
