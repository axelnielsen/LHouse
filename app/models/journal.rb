class Journal < ActiveRecord::Base

attr_accessible :name, :vendor_id, :paybleaccount_id, :receivableaccount_id, :credit, :debit, :description, :image, :journalnum, :community_id, :duedate, :paymentdate,
 :user_id
belongs_to :users
belongs_to :communities
belongs_to :vendors
belongs_to :payableaccounts
belongs_to :receivableaccounts
belongs_to :paymentmethods

  validates :name, presence: true
  validates :debit, presence: true
end
