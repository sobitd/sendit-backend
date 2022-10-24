require 'rails_helper'

RSpec.describe Order, type: :model do
  # it 'should allow valid values' do
  #   Model::CONSTANT.each do |v|
  #     should allow_value(v).for(:order_status)
  #   end
  # end

  it { should belong_to(:user, :parcel).without_validating_presence}
end
