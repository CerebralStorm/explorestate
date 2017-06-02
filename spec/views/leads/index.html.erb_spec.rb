require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    lead1 = create(:lead)
    lead2 = create(:lead)
    assign(:leads, [lead1, lead2])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Parcel Number".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Lead Type".to_s, :count => 2
  end
end
