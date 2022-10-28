require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'Associations' do
    # it { should have_many(:orders) }
    it { should have_many(:users) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:message) }
  end
end
