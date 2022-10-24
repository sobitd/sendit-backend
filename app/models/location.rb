class Location < ApplicationRecord
  validates :street_address, :latitude, :longitude, :city, presence: true
  belongs_to :users
end
