require 'rails_helper'

RSpec.describe ParcelCarrier, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:employee_code) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end
end
