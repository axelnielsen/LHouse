class CreateConfigsystems < ActiveRecord::Migration
  def change
    create_table :configsystems do |t|
      t.integer :interesttype_id
      t.decimal :interesttypeperc
      t.integer :interestreceivableaccount_id
      t.decimal :penaltyamount
      t.integer :penaltyreceivableaccount_id
      t.string :periodyear
      t.string :periodmonth
      t.date :periodinit
      t.date :periodfin
      t.integer :extension
      t.integer :correctionday

      t.timestamps
    end
  end
end
