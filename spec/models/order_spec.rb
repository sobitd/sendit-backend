require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:order_status) }
  end

  describe 'Associations' do
    it { should belong_to(:user).without_validating_presence }
    it { should belong_to(:parcel).without_validating_presence }
  end
end
