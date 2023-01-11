# frozen_string_literal: true

module Types
  module Models
    class BiometricsType < BaseObject
      field :date_of_birth, GraphQL::Types::ISO8601Date, null: true
      field :height, Integer, null: true
      field :weight, Integer, null: true
      field :genotype, String, null: true
      field :blood_type, String, null: true
      field :patient_id, String, null: true
      field :data, GraphQL::Types::JSON, null: true
    end
  end
end
