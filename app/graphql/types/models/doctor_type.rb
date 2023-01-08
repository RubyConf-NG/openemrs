module Types
  module Models
    class DoctorType < BaseObject
      field :name, String, null: true
      field :email, String, null: true
      field :phone_number, String, null: true
      field :uid, String, null: true
      field :gender, String, null: true
    end
  end
end