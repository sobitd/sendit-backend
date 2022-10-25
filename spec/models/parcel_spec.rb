require 'rails_helper'

# test "the truth" do
#   assert true
# end
RSpec.describe Parcel, type: :model do
  %i[recipient_address recipient_contact recipient_name weight from destination].each do |field|
    it { should validate_presence_of(field) }
  end
end

describe Parcel do
  it { should have_many(:orders) }
end
