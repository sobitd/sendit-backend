require 'rails_helper'

# test "the truth" do
#   assert true
# end
RSpec.describe User, type: :model do
  subject do
    described_class.new(first_name = 'Steven',
                        last_name = 'Kimani',
                        email_address = 'kimani@gmail.com',
                        phone_number = '071-2222-232',
                        username = 'stevekim',
                        password = 'steve3333')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a first_name' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a last_name' do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email_address' do
    subject.email_address = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a phone_number' do
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
