class User < ApplicationRecord
  ## the macro to encrypt users passwords
  has_secure_password
  has_many :parcels, dependent: :destroy
  # belongs_to :order, optional: true

  validates_presence_of :first_name, :last_name, :phone_number, :username, :password
  validates :username, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email_address, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  number_regex = /\d[0-9]\)*\z/
  validates_format_of :phone_number, with: number_regex
end
