class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :commonRoom_id
      t.date :initDate
      t.date :finDate
      t.time :initTime
      t.time :finTime
      t.integer :apartment_id

      t.timestamps
    end
  end
end
