# frozen_string_literal: true

# V1 Doctor Serializer
module V1
  class DoctorSerializer < UserSerializer
    attributes :roles

    def roles
      object.roles.map { |r| r.name.capitalize }
    end
  end
end
