# frozen_string_literal: true

# user factory
FactoryBot.define do
  factory :user do
    name { "#{Faker::Name.first_name}.#{Faker::Name.last_name}" }
    email { "#{Faker::Name.last_name}.#{Faker::Name.first_name}@gmail.com".downcase }
    phone_number { Faker::PhoneNumber.cell_phone }
    gender { ["male", "female", "unspecified"].sample }
    password { "password" }
  end
end
