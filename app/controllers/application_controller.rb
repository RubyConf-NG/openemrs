class ApplicationController < ActionController::Base
end

class ApiController < ActionController::API
  include V1::Response
  include Error::ErrorHandler
end
