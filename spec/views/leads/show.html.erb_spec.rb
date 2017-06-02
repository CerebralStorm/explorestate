require 'rails_helper'

RSpec.describe "leads/show", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :parcel_number => "Parcel Number",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :status => "Status",
      :lead_type => "Lead Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Parcel Number/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Lead Type/)
  end
end
