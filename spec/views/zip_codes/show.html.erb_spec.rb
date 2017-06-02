require 'rails_helper'

RSpec.describe "zip_codes/show", type: :view do
  before(:each) do
    @zip_code = assign(:zip_code, ZipCode.create!(
      :value => "Value",
      :median_listing_price => "Median Listing Price",
      :average_listing_price => "Average Listing Price",
      :price_to_rent_ratio => "Price To Rent Ratio",
      :median_rent => "Median Rent",
      :estimated_rent => "Estimated Rent"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/Median Listing Price/)
    expect(rendered).to match(/Average Listing Price/)
    expect(rendered).to match(/Price To Rent Ratio/)
    expect(rendered).to match(/Median Rent/)
    expect(rendered).to match(/Estimated Rent/)
  end
end
