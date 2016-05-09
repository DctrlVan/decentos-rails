class BitcoinAddr < ActiveRecord::Base
  belongs_to :invoice
end
