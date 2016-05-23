class BitcoinAddr < ActiveRecord::Base
  has_one :btcinvoice
end
