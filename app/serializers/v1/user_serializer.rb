# frozen_string_literal: true

# V1 User Serializer
module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :phone_number, :gender, :roles

    def roles
      object.roles.map { |r| r.name.capitalize }
    end
  end
end
