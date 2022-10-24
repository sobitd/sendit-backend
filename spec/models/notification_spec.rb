require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'Associations' do
    it { should belong_to(:order) }
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:message) }
  end
end
