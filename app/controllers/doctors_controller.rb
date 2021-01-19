class DoctorsController < Clearance::UsersController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.email_confirmation_token = Clearance::Token.new
  
    if @doctor.save
      UserMailer.registration_confirmation(@doctor).deliver_later
      redirect_back_or url_after_create, notice: "A confirmation email has been sent to your inbox"
    else
      render template: "users/new"
    end
  end
  
  private

  def doctor_params
    params.require(:doctor).permit(
      :email,
      :password,
      :date_of_birth,
      :name,
      :phone_number,
      :gender
    )
  end
end
