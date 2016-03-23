class RenamePaymenttypeTable < ActiveRecord::Migration
  def change
  	  rename_table :pamenttypes, :paymenttypes
  end
end
