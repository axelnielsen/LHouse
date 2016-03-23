class AddStatusTypeIdToStatuses < ActiveRecord::Migration
  def change
  	add_column :statuses, :statusType_id, :integer
  	add_index :statuses, :statusType_id
  end
end
