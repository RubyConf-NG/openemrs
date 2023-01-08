module Resolvers
  class FetchDoctors < Base
    type [::Types::Models::DoctorType], null: true
    def resolve(**args)
      Doctor.all
    end
  end
end