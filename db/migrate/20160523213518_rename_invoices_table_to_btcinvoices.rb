class RenameInvoicesTableToBtcinvoices < ActiveRecord::Migration
  def change
    rename_table :invoices, :btcinvoices
  end
end
