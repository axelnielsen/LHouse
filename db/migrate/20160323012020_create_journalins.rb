class CreateJournalins < ActiveRecord::Migration
  def change
    create_table :journalins do |t|
      t.string :name
      t.string :voucher
      t.integer :receivableaccount_id
      t.decimal :amount
      t.string :description
      t.integer :community_id
      t.date :paymentdate
      t.integer :apartment_id
      t.integer :paymentmethod_id
      t.string :image
      t.string :period
      t.integer :user_id

      t.timestamps
    end
  end
end
