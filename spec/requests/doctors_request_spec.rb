require 'rails_helper'

RSpec.describe "Doctors", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/doctors/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/doctors/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
