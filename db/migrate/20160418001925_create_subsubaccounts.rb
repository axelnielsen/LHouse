class CreateSubsubaccounts < ActiveRecord::Migration
  def change
    create_table :subsubaccounts do |t|
      t.string :name
      t.integer :subaccount_id

      t.timestamps
    end
  end
end
