class RenameBitcoinAddrInvoiceColumn < ActiveRecord::Migration
  def change
    change_table :bitcoin_addrs do |t|
      t.rename :invoice_id, :btcinvoice_id
    end
  end
end
