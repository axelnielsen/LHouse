class CreateReceivableaccounts < ActiveRecord::Migration
  def change
    create_table :receivableaccounts do |t|
      t.string :name
      t.integer :initbalance
      t.string :descroption
      t.integer :pymenttype_id
      t.string :subtype
      t.integer :ammount
      t.integer :percentammount
      t.string :aliquot
      t.string :building
      t.integer :community_id

      t.timestamps
    end
  end
end
