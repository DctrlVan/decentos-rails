class AddIssuerRefToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :issuer, index: true, foreign_key: true
  end
end
