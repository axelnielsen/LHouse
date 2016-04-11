class Changecontactphoneuser < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :contactPhone, :string
    end
  end

  def down
    change_table :users do |t|
      t.change :contactPhone, :integer
    end
  end
end
