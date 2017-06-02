require 'rails_helper'

RSpec.describe Lead, type: :model do
  it 'requires a user' do
    expect(FactoryGirl.build(:lead, user_id: nil)).to_not be_valid
  end

  it 'requires a zip_code' do
    expect(FactoryGirl.build(:lead, zip_code_id: nil)).to_not be_valid
  end
end
