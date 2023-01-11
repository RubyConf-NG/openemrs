module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :create_doctor, mutation: Mutations::Doctors::CreateDoctor, null: false, description: "Create a doctor"
    field :create_biometrics, mutation: Mutations::Biometrics::CreateBiometrics, null: false, description: "Create a biometric entry"
    def test_field
      "Hello World"
    end
  end
end
