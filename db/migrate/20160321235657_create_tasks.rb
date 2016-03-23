class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :inidate
      t.date :findate
      t.time :inihour
      t.time :finhour
      t.text :content
      t.integer :user_id_from
      t.integer :user_id_to
      t.integer :perccompleted

      t.timestamps
    end
  end
end
