class Btcinvoice < ActiveRecord::Base
  has_many :bitcoin_addrs
  has_one :user
  has_one :issuer, :class_name => 'User'
end
