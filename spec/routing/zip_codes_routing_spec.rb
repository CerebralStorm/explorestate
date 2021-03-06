require "rails_helper"

RSpec.describe ZipCodesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/zip_codes").to route_to("zip_codes#index")
    end

    it "routes to #new" do
      expect(:get => "/zip_codes/new").to route_to("zip_codes#new")
    end

    it "routes to #show" do
      expect(:get => "/zip_codes/1").to route_to("zip_codes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/zip_codes/1/edit").to route_to("zip_codes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/zip_codes").to route_to("zip_codes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/zip_codes/1").to route_to("zip_codes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/zip_codes/1").to route_to("zip_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/zip_codes/1").to route_to("zip_codes#destroy", :id => "1")
    end

  end
end
