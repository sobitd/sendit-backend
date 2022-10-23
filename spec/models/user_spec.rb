require 'rails_helper'

# test "the truth" do
#   assert true
# end
RSpec.describe User, type: :model do
  %i[first_name last_name email_address phone_number username].each do |field|
    it { should validate_presence_of(field) }
  end
end
