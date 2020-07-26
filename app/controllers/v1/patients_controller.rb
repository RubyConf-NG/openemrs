# frozen_string_literal: true

module V1
  # V1 patients controller
  class PatientsController < ApplicationController
    def create
      patient = User.create!(patient_params)
      patient.add_role(:patient) if patient.roles.blank?
      json_response(
        object: patient,
        status: :created,
        options: { root: "patient" }
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
