class BitcoinAddr < ActiveRecord::Base
  has_one :invoice
end
