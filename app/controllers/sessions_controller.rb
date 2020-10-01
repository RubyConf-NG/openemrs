# frozen_string_literal: true

# sessions controller inheriting from clearance
class SessionsController < Clearance::SessionsController
  before_action :redirect_signed_in_users, only: [:new]
  skip_before_action :require_login, only: [:create, :new, :destroy], raise: false
  def create
    @user = authenticate(params)
    
    sign_in(@user) do |status|
      binding.pry
      if status.success?
        redirect_back_or url_after_create
      else
        flash.now.alert = status.failure_message
        render template: "sessions/new", status: :unauthorized
      end
    end
  end
  
  private
  
  def doctor_params
    params.require(:doctor).permit(
      :email,
      :password,
      :date_of_birth,
      :name
    )
  end
end
