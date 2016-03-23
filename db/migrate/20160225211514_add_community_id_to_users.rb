class AddCommunityIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :community_id, :integer
  	add_index :users, :community_id
  end
end
