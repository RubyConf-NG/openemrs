# frozen_string_literal: true

module V1
  # V1 doctors controller
  class DoctorsController < ApiController
    def create
      doctor = Doctor.create!(doctor_params)
      json_response(
        object: doctor,
        status: :created
      )
    end

    private

    def doctor_params
      params.permit(
        :name, :email, :phone_number, :gender, :date_of_birth,
        :password, :password_confirmation, :uid
      )
    end
  end
end
