# frozen_string_literal: true

module V1
  class BiometricsController < ApiController
    before_action :find_patient, only: %i[create]
    def create
      biometrics = Biometric.create!(biometrics_params)
      json_response(object: biometrics, status: :created, extra: { message: 'Saved biometrics for user' })
    end
    
    def index
      json_response(object: Biometric.all, status: :ok)
    end
    
    private
    
    def find_patient
      @patient = Patient.find_by_uid(params[:patient_id])
    end
    
    def biometrics_params
      params.require(:biometrics).permit(
        :date_of_birth, :height, :weight, :genotype, :blood_type, :patient_id,
        data: [:date_of_birth, :height, :weight, :genotype, :blood_type, :patient_id]
      )
    end
  end
end