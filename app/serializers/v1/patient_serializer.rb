# frozen_string_literal: true

# V1 Patient Serializer
module V1
  class PatientSerializer < UserSerializer
    attributes :roles

    def roles
      object.roles.map { |r| r.name.capitalize }
    end
  end
end
