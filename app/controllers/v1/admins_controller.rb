# frozen_string_literal: true

module V1
  # V1 Admin Controller
  class AdminsController < ApplicationController
    def create
      admin = Admin.create!(admin_params)
      json_response(
        object: admin,
        status: :created
      )
    end

    private

    def admin_params
      params.permit(
        :name, :email, :phone_number, :gender, :date_of_birth,
        :password, :password_confirmation, :uid
      )
    end
  end
end
