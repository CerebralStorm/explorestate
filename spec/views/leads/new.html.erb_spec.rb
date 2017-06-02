require 'rails_helper'

RSpec.describe "leads/new", type: :view do
  before(:each) do
    assign(:lead, Lead.new(
      :parcel_number => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :status => "MyString",
      :lead_type => "MyString"
    ))
  end

  it "renders new lead form" do
    render

    assert_select "form[action=?][method=?]", leads_path, "post" do

      assert_select "input[name=?]", "lead[parcel_number]"

      assert_select "input[name=?]", "lead[address]"

      assert_select "input[name=?]", "lead[city]"

      assert_select "input[name=?]", "lead[state]"

      assert_select "input[name=?]", "lead[zip]"

      assert_select "input[name=?]", "lead[status]"

      assert_select "input[name=?]", "lead[lead_type]"
    end
  end
end
