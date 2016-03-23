class Status < ActiveRecord::Base

validate :content , presence: true
attr_accessible :user_id, :statusType_id, :content
belongs_to :statusType
belongs_to :user
has_many :comments, as: :commentable

end
