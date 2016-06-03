class AddInvoiceprefToUsers < ActiveRecord::Migration
  def change
    add_column :users, :invoicepref, :integer
  end
end
