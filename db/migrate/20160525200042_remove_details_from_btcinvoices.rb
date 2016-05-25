class RemoveDetailsFromBtcinvoices < ActiveRecord::Migration
  def change
    remove_column :btcinvoices, :sender, :integer
    remove_column :btcinvoices, :recipient, :integer
  end
end
