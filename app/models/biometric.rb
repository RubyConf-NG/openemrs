# frozen_string_literal: true

# Biometric model
class Biometric < ApplicationRecord
  JSON_SCHEMA = "#{Rails.root}/app/models/schemas/biometrics/data.json"
  belongs_to :patient, inverse_of: :biometric

  default_scope { includes(:patient) }

  # validations
  validates_date :date_of_birth
  
  validates :data, json: { message: ->(errors) { errors }, schema: JSON_SCHEMA }
end
