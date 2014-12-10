require 'rails_helper'

RSpec.describe RegistrationsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    it "returns http success" do
      post :create, { user: { email: "ohata@daraf.co.jp", password: "password", password_confirmation: "password" } }
      expect(response).to have_http_status(:success)
    end

    it "returns http failure" do
      post :create, { user: { email: "ohata@daraf.co.jp", password: "password", password_confirmation: "passwrod" } }
      expect(response).to have_http_status(:bad_request)
    end
  end
end
