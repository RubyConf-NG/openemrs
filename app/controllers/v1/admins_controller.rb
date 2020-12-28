# frozen_string_literal: true

module V1
  # V1 Admin Controller
  class AdminsController < ApiController
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
        :password, :uid
      )
    end
  end
end
