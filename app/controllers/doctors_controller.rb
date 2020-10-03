class DoctorsController < Clearance::UsersController
  def new
    @user = Doctor.new
    render "users/new"
  end

  def create
    @doctor = Doctor.new(doctor_params)
  
    if @doctor.save
      sign_in @doctor
      redirect_back_or url_after_create
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
