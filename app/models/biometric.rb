# frozen_string_literal: true

# Biometric model
class Biometric < ApplicationRecord
  belongs_to :patient, inverse_of: :biometric

  default_scope { includes(:patient) }

  # validations
  validates_date :date_of_birth
end
