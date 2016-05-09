class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.decimal :rate, precision: 9, scale: 5
      t.datetime :time_sent
      t.boolean :is_paid
      t.decimal :fiat_amt, precision: 10, scale: 2
      t.integer :recipient
      t.integer :sender

      t.timestamps null: false
    end
  end
end
