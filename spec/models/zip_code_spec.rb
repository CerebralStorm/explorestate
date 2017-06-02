require 'rails_helper'

RSpec.describe ZipCode, type: :model do
  it 'requires a value' do
    expect(FactoryGirl.build(:zip_code, value: nil)).to_not be_valid
  end
end
