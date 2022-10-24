class User < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email_address, :phone_number, :username, :password
  validates :username, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email_address, email: true
  validates :phone_number, phone: true, length: { is: 10 }
  has_many :parcels
end
