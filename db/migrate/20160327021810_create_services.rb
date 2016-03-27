class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :period
      t.decimal :porcgastocomun
      t.decimal :porcaguacaliente
      t.decimal :porccalefaccion
      t.integer :vendor_id
      t.string :custnumber
      t.integer :payableaccount_id

      t.timestamps
    end
  end
end
