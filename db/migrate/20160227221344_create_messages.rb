class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id_from
      t.integer :user_id_to
      t.text :message
      t.boolean :active
      t.boolean :viewed
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
