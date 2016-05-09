class Invoice < ActiveRecord::Base
  has_many :bitcoin_addrs
  belongs_to :user
  has_one :issuer, :class_name => 'User'
end
