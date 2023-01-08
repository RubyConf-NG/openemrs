module Types
  module Inputs
    class DoctorInputType < BaseInputObject
      argument :name, String, required: true
      argument :email, String, required: true
      argument :phone_number, String, required: true
      argument :uid, String, required: true
      argument :gender, String, required: true
    end
  end
end