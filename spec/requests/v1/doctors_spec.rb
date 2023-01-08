# frozen_string_literal: true

# doctors request spec

require "rails_helper"

RSpec.describe "V1::DoctorsController", type: :request do
  let(:params) { attributes_for(:doctor) }

  describe "#create" do
    context "when user passes in valid doctor params" do
      let(:expected_doctor) {
        {
          name: params[:name],
          email: params[:email],
          phone_number: params[:phone_number],
          gender: params[:gender],
          roles: ["Doctor"]
        }.as_json
      }
      it "should create a doctor with a default role" do
        post v1_doctors_path, params: params
        expect(json["data"]["doctor"]).to include(expected_doctor)
      end

      it "should increase the size of the users table by 1" do
        expect do
          post v1_doctors_path, params: params
        end.to change(Doctor, :count).by 1
      end
    end

    context "when invalid params are passed" do
      before do
        params.delete :email
        post v1_doctors_path, params: params
      end

      it "returns 422 as the status code" do
        expect(response).to have_http_status 422
      end
    end

    context "when email already exists" do
      before do
        2.times { post v1_doctors_path, params: params }
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
