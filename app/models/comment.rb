class Comment < ActiveRecord::Base
	attr_accessible   :comment, :commentable_id, :commentable_type
	belongs_to :comentable, polymorphic: true
	has_many :comments, as: :commentable
end
