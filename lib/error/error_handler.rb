# frozen_string_literal: true

# Error handler for API
module Error
  module ErrorHandler
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordNotFound do |e|
          message = {
            e.model.underscore.downcase.to_sym => "was not found"
          }
          respond(message, :not_found)
        end
        rescue_from ActiveRecord::RecordInvalid do |e|
          respond(e.record.errors.messages, :unprocessable_entity)
        end
        rescue_from ActiveRecord::RecordNotUnique do |e|
          respond(e.record.errors.messages, :conflict)
        end
      end
    end

    private

    def respond(messages, status)
      json = { errors: [messages] }.as_json
      render json: json, status: status
    end
  end
end
