class Addpasscommunityuserprofile < ActiveRecord::Migration
  def change
  		add_column :communities, :userpass, :string
  		add_column :communities, :adminpass, :string
  		add_column :communities, :concierge, :string
  end
end
