class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :community_id
      t.string :name
      t.integer :m2

      t.timestamps
    end
  end
end
