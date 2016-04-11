class Addcommunitypasstouser < ActiveRecord::Migration
  def change
  	add_column :users, :communitypass, :string
  end
end
