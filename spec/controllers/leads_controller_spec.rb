require 'rails_helper'

RSpec.describe LeadsController, type: :controller do
  login_user

  let(:valid_attributes) {
    build(:lead).attributes
  }

  let(:invalid_attributes) {
    {user_id: nil}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      lead = Lead.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      lead = Lead.create! valid_attributes
      get :show, params: {id: lead.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      lead = Lead.create! valid_attributes
      get :edit, params: {id: lead.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Lead" do
        expect {
          post :create, params: {lead: valid_attributes}, session: valid_session
        }.to change(Lead, :count).by(1)
      end

      it "redirects to the created lead" do
        post :create, params: {lead: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Lead.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {lead: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {address: 'new address'}
      }

      it "updates the requested lead" do
        lead = Lead.create! valid_attributes
        put :update, params: {id: lead.to_param, lead: new_attributes}, session: valid_session
        lead.reload
        expect(lead.address).to eq 'new address'
      end

      it "redirects to the lead" do
        lead = Lead.create! valid_attributes
        put :update, params: {id: lead.to_param, lead: valid_attributes}, session: valid_session
        expect(response).to redirect_to(lead)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        lead = Lead.create! valid_attributes
        put :update, params: {id: lead.to_param, lead: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested lead" do
      lead = Lead.create! valid_attributes
      expect {
        delete :destroy, params: {id: lead.to_param}, session: valid_session
      }.to change(Lead, :count).by(-1)
    end

    it "redirects to the leads list" do
      lead = Lead.create! valid_attributes
      delete :destroy, params: {id: lead.to_param}, session: valid_session
      expect(response).to redirect_to(leads_url)
    end
  end

end
