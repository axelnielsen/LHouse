class AddPaymmethodToJournal < ActiveRecord::Migration
  def change
  	add_column :journals , :paymentmethod_id, :integer
  	add_index :journals , :paymentmethod_id
  end
end
