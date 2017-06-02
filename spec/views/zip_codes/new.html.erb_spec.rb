require 'rails_helper'

RSpec.describe "zip_codes/new", type: :view do
  before(:each) do
    assign(:zip_code, ZipCode.new(
      :value => "MyString",
      :median_listing_price => "MyString",
      :average_listing_price => "MyString",
      :price_to_rent_ratio => "MyString",
      :median_rent => "MyString",
      :estimated_rent => "MyString"
    ))
  end

  it "renders new zip_code form" do
    render

    assert_select "form[action=?][method=?]", zip_codes_path, "post" do

      assert_select "input[name=?]", "zip_code[value]"

      assert_select "input[name=?]", "zip_code[median_listing_price]"

      assert_select "input[name=?]", "zip_code[average_listing_price]"

      assert_select "input[name=?]", "zip_code[price_to_rent_ratio]"

      assert_select "input[name=?]", "zip_code[median_rent]"

      assert_select "input[name=?]", "zip_code[estimated_rent]"
    end
  end
end
