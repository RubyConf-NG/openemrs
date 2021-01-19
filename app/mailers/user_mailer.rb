class UserMailer < ApplicationMailer
  default from: "dialloabubakar5861@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail to: @user.email, subject: "Please confirm your email"
  end
end
