class CreatePamenttypes < ActiveRecord::Migration
  def change
    create_table :pamenttypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
