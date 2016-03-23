class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :nombre
      t.integer :precio
      t.integer :user_id

      t.timestamps
    end
  end
end
