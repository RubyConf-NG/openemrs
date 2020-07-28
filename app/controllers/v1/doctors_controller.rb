# frozen_string_literal: true

module V1
  # V1 doctors controller
  class DoctorsController < ApplicationController
    def create
      doctor = Doctor.create!(doctor_params)
      json_response(
        object: doctor,
        status: :created,
        options: { root: "doctor" }
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
