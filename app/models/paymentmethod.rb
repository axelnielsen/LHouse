class Paymentmethod < ActiveRecord::Base

attr_accessible	:name
has_many :journals
end
