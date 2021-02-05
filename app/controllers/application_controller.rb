class ApplicationController < ActionController::Base
  include Clearance::Controller

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: "text/html" }
      format.html do
        flash[:alert] = exception.message
        # TODO: set up flash messages in application layout
        redirect_to main_app.root_url
      end
      format.js   { head :forbidden, content_type: "text/html" }
    end
  end
end
