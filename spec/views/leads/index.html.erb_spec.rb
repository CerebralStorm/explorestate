require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :parcel_number => "Parcel Number",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :status => "Status",
        :lead_type => "Lead Type"
      ),
      Lead.create!(
        :parcel_number => "Parcel Number",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :status => "Status",
        :lead_type => "Lead Type"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Parcel Number".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Lead Type".to_s, :count => 2
  end
end
