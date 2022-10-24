require 'rails_helper'

RSpec.describe Delivery, type: :model do
  describe 'Associations' do
    it { should belong_to(:order) }
    it { should belong_to(:bill) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:recipient_name) }
    it { should validate_presence_of(:reception_time) }
  end
end
