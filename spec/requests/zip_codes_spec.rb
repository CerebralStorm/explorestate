require 'rails_helper'

RSpec.describe "ZipCodes", type: :request do
  describe "GET /zip_codes" do
    it "should redirect to login if not signed in" do
      get zip_codes_path
      expect(response).to have_http_status(302)
    end
  end
end
