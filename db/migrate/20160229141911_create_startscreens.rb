class CreateStartscreens < ActiveRecord::Migration
  def change
    create_table :startscreens do |t|
      t.string :name

      t.timestamps
    end
  end
end
