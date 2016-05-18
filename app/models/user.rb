class User < ActiveRecord::Base
  has_secure_password
  has_many :invoices
  has_many :issued_invoices, :class_name => 'Invoice', :foreign_key => 'issuer_id'

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
