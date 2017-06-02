require 'rails_helper'

RSpec.describe "leads/show", type: :view do
  before(:each) do
    lead = create(:lead)
    @lead = assign(:lead, lead)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Parcel Number/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Lead Type/)
  end
end
