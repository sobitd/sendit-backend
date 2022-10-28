class LocationAssigned < ApplicationRecord
    belongs_to :parcel_carrier 
    belongs_to :location
end
