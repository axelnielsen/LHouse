class CreatePayableaccounts < ActiveRecord::Migration
  def change
    create_table :payableaccounts do |t|
      t.string :type
      t.string :subtype
      t.string :subsubtype
      t.integer :community_id

      t.timestamps
    end
  end
end
