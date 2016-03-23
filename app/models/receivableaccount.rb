class Receivableaccount < ActiveRecord::Base

attr_accessible :name, :initbalance, :descroption, :pymenttype_id, :subtype, :ammount, :percentammount, :aliquot, :building, :community_id
belongs_to :community
end
