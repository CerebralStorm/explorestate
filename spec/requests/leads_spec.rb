require 'rails_helper'

RSpec.describe "Leads", type: :request do
  describe "GET /leads" do
    it "should redirect to login if not signed in" do
      get leads_path
      expect(response).to have_http_status(302)
    end
  end
end
