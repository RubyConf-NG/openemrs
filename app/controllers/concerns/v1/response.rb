# frozen_string_literal: true

# V1 Response builder
module V1
  module Response
    def json_response(object: nil, extra: nil, options: {}, status: :ok)
      options.merge!(namespace: "V1")
      object = ActiveModelSerializers::SerializableResource.new(object, options).as_json
      response = { data: object, extra: extra }
      render json: response, status: status
    end
  end
end
