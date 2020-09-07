class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end
  
  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to :index
    else
      render :new
    end
  end
  
  def index
    @doctors = Doctor.all
  end

  def edit
  end
end
