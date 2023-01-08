# frozen_string_literal: true

module V1
  class BiometricsSerializer < ActiveModel::Serializer
    attributes :id, :height, :weight, :date_of_birth, :blood_type, :genotype, :data, :patient_id
  end
end
