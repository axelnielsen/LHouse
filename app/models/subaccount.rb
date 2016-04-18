class Subaccount < ActiveRecord::Base
	attr_accessible :name
	belongs_to :payableaccount
	has_many :subsubaccounts , :dependent => :destroy
	accepts_nested_attributes_for :subsubaccounts , :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
	
end
