class CreateBankaccounts < ActiveRecord::Migration
  def change
    create_table :bankaccounts do |t|
      t.string :name
      t.string :accountholder
      t.string :accountnum
      t.string :bankname
      t.integer :initbalance
      t.integer :community_id

      t.timestamps
    end
  end
end
