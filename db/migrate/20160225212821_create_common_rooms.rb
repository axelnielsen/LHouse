class CreateCommonRooms < ActiveRecord::Migration
  def change
    create_table :common_rooms do |t|
      t.string :name
      t.integer :community_id

      t.timestamps
    end
  end
end
