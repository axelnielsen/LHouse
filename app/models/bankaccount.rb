class Bankaccount < ActiveRecord::Base

attr_accessible :name, :accountholder, :accountnum, :bankname, :initbalance, :community_id

belongs_to :community

validates :name, presence: true 
validates :accountholder, presence: true 
validates :accountnum, presence: true 
validates :bankname, presence: true 
validates :initbalance, presence: true 

end
