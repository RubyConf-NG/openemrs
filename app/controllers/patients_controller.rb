class PatientsController < Clearance::UsersController
  def new
    @user = Patient.new
    render "users/new"
  end

  def create
    @patient = Patient.new(patient_params)
  
    if @patient.save
      sign_in @patient
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end
  
  private

  def patient_params
    params.require(:patient).permit(
      :email,
      :password,
      :date_of_birth,
      :name,
      :phone_number,
      :gender
    )
  end
end
