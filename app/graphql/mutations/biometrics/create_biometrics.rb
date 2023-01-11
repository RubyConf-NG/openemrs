# frozen_string_literal: true

module Mutations
  module Biometrics
    class CreateBiometrics < BaseMutation
      argument :date_of_birth, GraphQL::Types::ISO8601Date, required: false
      argument :height, Integer, required: false
      argument :weight, Integer, required: false
      argument :genotype, String, required: false
      argument :blood_type, String, required: false
      argument :patient_id, String, required: false
      argument :data, GraphQL::Types::JSON, required: false
      
      field :biometrics, Types::Models::BiometricsType, null: true
      
      def resolve(**kwargs)
        params = build_params(kwargs)
        
        { biometrics: Biometric.create!(params) }
      end
      
      private
      
      def build_params(kwargs)
        {
          date_of_birth: kwargs[:date_of_birth],
          height: kwargs[:height],
          weight: kwargs[:weight],
          genotype: kwargs[:genotype],
          blood_type: kwargs[:blood_type],
          patient_id: kwargs[:patient_id],
          data: kwargs[:data]
        }
      end
    end
  end
end
