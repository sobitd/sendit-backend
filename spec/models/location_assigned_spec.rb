require 'rails_helper'

RSpec.describe LocationAssigned, type: :model do
  describe 'Associations' do
    it { should belong_to(:parcel_carrier) }
    it { should belong_to(:location) }
  end
end
