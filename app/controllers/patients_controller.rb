# frozen_string_literal: true

# Patients controller
class PatientsController < ApplicationController
  load_and_authorize_resource
  before_action :find_patient, only: %i[edit update]
  def new
    @patient = Patient.new
    @patient.build_biometric
  end

  def edit; end
  
  def update
    if @patient.update(patient_params)
      redirect_to :root
    else
      render 'edit'
    end
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(
      :name,
      :email,
      :phone_number,
      :gender,
      :password,
      biometric_attributes: [:id, :height, :weight, :date_of_birth, :blood_type, :genotype]
    )
  end
  
  def find_patient
    @patient ||= Patient.includes(:biometric).find_by(uid: params[:id])
  end
  
  def current_ability
    @current_ability ||= Abilities::PatientAbility.new(current_user)
  end
end
