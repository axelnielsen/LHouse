class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :nombre
      t.string :address
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
