require 'rails_helper'

RSpec.describe "leads/edit", type: :view do
  before(:each) do
    lead = create(:lead)
    @lead = assign(:lead, lead)
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "input[name=?]", "lead[parcel_number]"

      assert_select "input[name=?]", "lead[address]"

      assert_select "input[name=?]", "lead[city]"

      assert_select "input[name=?]", "lead[state]"

      assert_select "input[name=?]", "lead[zip_code_id]"

      assert_select "input[name=?]", "lead[status]"

      assert_select "input[name=?]", "lead[lead_type]"
    end
  end
end
