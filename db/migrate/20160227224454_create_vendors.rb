class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :rut
      t.string :accountnum
      t.string :bankname
      t.integer :community_id
      t.string :contactphone
      t.string :contactmail
      t.string :website
      t.string :address
      t.integer :bankaccount_id

      t.timestamps
    end
  end
end
