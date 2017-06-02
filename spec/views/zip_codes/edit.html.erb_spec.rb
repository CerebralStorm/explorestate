require 'rails_helper'

RSpec.describe "zip_codes/edit", type: :view do
  before(:each) do
    @zip_code = assign(:zip_code, ZipCode.create!(
      :value => "MyString",
      :median_listing_price => "MyString",
      :average_listing_price => "MyString",
      :price_to_rent_ratio => "MyString",
      :median_rent => "MyString",
      :estimated_rent => "MyString"
    ))
  end

  it "renders the edit zip_code form" do
    render

    assert_select "form[action=?][method=?]", zip_code_path(@zip_code), "post" do

      assert_select "input[name=?]", "zip_code[value]"

      assert_select "input[name=?]", "zip_code[median_listing_price]"

      assert_select "input[name=?]", "zip_code[average_listing_price]"

      assert_select "input[name=?]", "zip_code[price_to_rent_ratio]"

      assert_select "input[name=?]", "zip_code[median_rent]"

      assert_select "input[name=?]", "zip_code[estimated_rent]"
    end
  end
end
