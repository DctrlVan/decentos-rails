class User < ActiveRecord::Base
  has_secure_password
  has_many :btcinvoices
  has_many :issued_invoices, :class_name => 'Btcinvoice', :foreign_key => 'issuer_id'
  enum invoicepref: [ :bitcoin, :cad ]

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
