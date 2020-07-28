# frozen_string_literal: true

# V1 Admin Serializer
module V1
  class AdminSerializer < UserSerializer
    attributes :roles

    def roles
      object.roles.map { |r| r.name.capitalize }
    end
  end
end
