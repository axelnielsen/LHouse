class CreatePaymentmethods < ActiveRecord::Migration
  def change
    create_table :paymentmethods do |t|
      t.string :name

      t.timestamps
    end
  end
end
