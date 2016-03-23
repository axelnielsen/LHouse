class Vendor < ActiveRecord::Base

attr_accessible  :name, :rut, :accountnum, :bankname, :community_id, :contactphone, :contactmail, :website, :address, :bankaccount_id
belongs_to :community
has_many :journals

end
