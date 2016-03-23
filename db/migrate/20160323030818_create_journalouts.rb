class CreateJournalouts < ActiveRecord::Migration
  def change
    create_table :journalouts do |t|
      t.string :name
      t.string :voucher
      t.integer :payable_id
      t.decimal :amount
      t.string :description
      t.integer :community_id
      t.date :paymentdate
      t.date :duedate
      t.integer :paymentmethod_id
      t.string :image
      t.string :period
      t.integer :user_id

      t.timestamps
    end
  end
end
