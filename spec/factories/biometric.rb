# frozen_string_literal: true

FactoryBot.define do
  factory :biometric do
    height { Faker::Number.number(digits: 3) }
    weight { Faker::Number.number(digits: 2) }
    blood_type { "O+" }
    genotype { "AA" }
    date_of_birth { Faker::Date.birthday }
    data { {height: 187}.to_json }
    patient
  end
end
