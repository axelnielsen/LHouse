class CreateSubaccounts < ActiveRecord::Migration
  def change
    create_table :subaccounts do |t|
      t.string :name
      t.integer :payableaccount_id

      t.timestamps
    end
  end
end
