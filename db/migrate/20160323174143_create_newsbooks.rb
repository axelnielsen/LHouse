class CreateNewsbooks < ActiveRecord::Migration
  def change
    create_table :newsbooks do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
