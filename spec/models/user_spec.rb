require 'rails_helper'

# test "the truth" do
#   assert true
# end
RSpec.describe User, type: :model do
  %i[first_name last_name email_address phone_number username].each do |field|
    it { should validate_presence_of(field) }
  end
end

describe User do
  it 'should have many parcels' do
    user = User.reflect_on_association(:parcels)
    expect(user.macro).to eq(:has_many)
  end

  it 'should belong to order' do 
    user = User.reflect_on_association(:order)
    expect(user.macro).to eq(:belongs_to)
  end
end
