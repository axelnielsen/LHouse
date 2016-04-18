class Payableaccount < ActiveRecord::Base

attr_accessible :type, :subtype, :subsubtype, :community_id
belongs_to :community
has_many :journals
has_many :subaccounts  , :dependent => :destroy
accepts_nested_attributes_for :subaccounts, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
