class Delivery < ApplicationRecord
    belongs_to :bill
    belongs_to :order
    validates :recipient_name, :reception_time, presence: true
end
