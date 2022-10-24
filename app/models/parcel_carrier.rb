class ParcelCarrier < ApplicationRecord
  validates :employee_code, :first_name, :last_name, presence: true
end
