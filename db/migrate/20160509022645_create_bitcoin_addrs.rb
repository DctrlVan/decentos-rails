class CreateBitcoinAddrs < ActiveRecord::Migration
  def change
    create_table :bitcoin_addrs do |t|
      t.string :address
      t.integer :invoice_id
      t.boolean :is_used

      t.timestamps null: false
    end
  end
end
