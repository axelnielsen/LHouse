class CreateStatusTypes < ActiveRecord::Migration
  def change
    create_table :status_types do |t|
      t.string :nombre
      t.text :content

      t.timestamps
    end
  end
end
