require 'rails_helper'

RSpec.describe "zip_codes/index", type: :view do
  before(:each) do
    assign(:zip_codes, [
      ZipCode.create!(
        :value => "Value",
        :median_listing_price => "Median Listing Price",
        :average_listing_price => "Average Listing Price",
        :price_to_rent_ratio => "Price To Rent Ratio",
        :median_rent => "Median Rent",
        :estimated_rent => "Estimated Rent"
      ),
      ZipCode.create!(
        :value => "Value",
        :median_listing_price => "Median Listing Price",
        :average_listing_price => "Average Listing Price",
        :price_to_rent_ratio => "Price To Rent Ratio",
        :median_rent => "Median Rent",
        :estimated_rent => "Estimated Rent"
      )
    ])
  end

  it "renders a list of zip_codes" do
    render
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Median Listing Price".to_s, :count => 2
    assert_select "tr>td", :text => "Average Listing Price".to_s, :count => 2
    assert_select "tr>td", :text => "Price To Rent Ratio".to_s, :count => 2
    assert_select "tr>td", :text => "Median Rent".to_s, :count => 2
    assert_select "tr>td", :text => "Estimated Rent".to_s, :count => 2
  end
end
