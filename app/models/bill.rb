class Bill < ApplicationRecord
    has_one :delivery
    validates :total_cost, presence: true
end
