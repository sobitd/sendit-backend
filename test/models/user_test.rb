require 'rails_helper'

# test "the truth" do
#   assert true
# end
RSpec.describe User, type: :model do
  %i[first_name last_name email_address phone_number username].each do |field|
    it { should validate_presence_of(field) }
  end

  #  it 'is not valid without a first_name' do
  #    expect(subject).to_not be_valid
  #  end

  # it 'is not valid without a last_name' do
  #   subject.last_name = nil
  #   expect(subject).to_not be_valid
  # end

  # it 'is not valid without an email_address' do
  #   subject.email_address = nil
  #   expect(subject).to_not be_valid
  # end

  # it 'is not valid without a phone_number' do
  #   subject.phone_number = nil
  #   expect(subject).to_not be_valid
  # end

  # it 'is not valid without a username' do
  #   subject.username = nil
  #   expect(subject).to_not be_valid
  # end

  # it 'is not valid without a password' do
  #   subject.password = nil
  #   expect(subject).to_not be_valid
  # end
end
