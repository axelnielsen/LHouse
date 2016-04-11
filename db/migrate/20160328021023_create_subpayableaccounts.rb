class CreateSubpayableaccounts < ActiveRecord::Migration
  def change
    create_table :subpayableaccounts do |t|
      t.string :type

      t.timestamps
    end
  end
end
