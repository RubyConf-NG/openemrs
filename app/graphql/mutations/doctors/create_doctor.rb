module Mutations
  module Doctors
    class CreateDoctor < BaseMutation
      argument :name, String, required: true
      argument :email, String, required: true
      argument :phone_number, String, required: true
      argument :gender, String, required: true
      argument :password, String, required: true
      
      field :doctor, Types::Models::DoctorType

      def resolve(name:, email:, phone_number:, gender:, password:)
        params = {
          name: name, email: email, phone_number: phone_number,
          gender: gender, password: password
        }

        { doctor: Doctor.create!(params) }
      end
    end
  end
end