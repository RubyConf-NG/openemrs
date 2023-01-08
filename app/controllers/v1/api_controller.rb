# frozen_string_literal: true

module V1
  class ApiController < ActionController::API
    include V1::Response
    include Error::ErrorHandler
  end
end
