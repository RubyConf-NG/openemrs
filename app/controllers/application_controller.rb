class ApplicationController < ActionController::API
  include V1::Response
  include Error::ErrorHandler
end
