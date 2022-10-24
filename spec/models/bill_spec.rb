require 'rails_helper'

RSpec.describe Bill, type: :model do
  describe "Associations" do 
    it { should have_one(:delivery)}
  end

  describe "Validations" do 
    it { should validate_presence_of(:total_cost)}
  end
end
