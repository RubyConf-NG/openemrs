# frozen_string_literal: true

module V1
  # V1 patients controller
  class PatientsController < ApiController
    def create
      patient = Patient.create!(patient_params)
      json_response(
        object: patient,
        status: :created
      )
    end

    private

    def patient_params
      params.permit(
        :name, :email, :phone_number, :gender, :date_of_birth,
        :password, :password_confirmation, :uid
      )
    end
  end
end
