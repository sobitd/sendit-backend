class User < ApplicationRecord
validates_presence_of :first_name, :last_name, :email_address, :phone_number, :username, :password
has_many :parcels
end
