# frozen_string_literal: true

# admins request spec

require "rails_helper"

RSpec.describe "V1::AdminsController", type: :request do
  let(:params) { attributes_for(:admin) }

  describe "#create" do
    context "when user passes in valid admin params" do
      let(:expected_admin) {
        {
          name: params[:name],
          email: params[:email],
          phone_number: params[:phone_number],
          gender: params[:gender],
          roles: ["Admin"]
        }.as_json
      }
      it "should create an admin with a default role" do
        post v1_admins_path, params: params
        expect(json["data"]["admin"]).to include(expected_admin)
      end

      it "should increase the size of the users table by 1" do
        expect do
          post v1_admins_path, params: params
        end.to change(Admin, :count).by 1
      end
    end

    context "when invalid params are passed" do
      before do
        params.delete :name
        post v1_admins_path, params: params
      end

      it "returns 422 as the status code" do
        expect(response).to have_http_status 422
      end

      it "returns an error" do
        errors = json["errors"].first
        expect(errors["name"]).to include("can't be blank")
      end
    end

    context "when email already exists" do
      before do
        2.times { post v1_admins_path, params: params }
      end

      it "returns 422 as the status code" do
        expect(response).to have_http_status 422
      end

      it "returns an error" do
        errors = json["errors"].first
        expect(errors["email"]).to include("has already been taken")
      end
    end
  end
end
