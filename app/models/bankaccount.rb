class Bankaccount < ActiveRecord::Base

attr_accessible :name, :accountholder, :accountnum, :bankname, :initbalance, :community_id

belongs_to :community

end
