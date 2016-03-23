class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :name
      t.integer :vendor_id
      t.integer :paybleaccount_id
      t.integer :receivableaccount_id
      t.integer :credit
      t.integer :debit
      t.string :description
      t.string :image
      t.string :journalnum
      t.integer :community_id
      t.date :duedate
      t.date :paymentdate
      t.integer :user_id

      t.timestamps
    end
  end
end
