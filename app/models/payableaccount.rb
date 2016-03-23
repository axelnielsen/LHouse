class Payableaccount < ActiveRecord::Base

attr_accessible :type, :subtype, :subsubtype, :community_id
belongs_to :community
has_many :journals
end
