# frozen_string_literal: true

# Patient model spec
require "rails_helper"

RSpec.describe Patient, type: :model do
  let!(:patient) { create(:patient) }
  let!(:patient_2) { create(:patient) }
  describe "instances" do
    context "when an instance is created" do
      it "should be a kind of the Patient class" do
        expect(patient).to be_kind_of Patient
      end

      it "should have a role of :patient" do
        role = patient.roles.map(&:name).uniq
        expect(role).to eq ["patient"]
      end

      it "should have it's uid prefixed with patient" do
        expect(patient.id).to include "patient"
      end
    end
  end

  describe "default scope" do
    context "when a call to return all instances is made" do
      it "should return only instances of the Patient class" do
        Patient.all.each do |patient_user|
          expect(patient_user).to be_kind_of Patient
        end
      end

      it "should return patient as the role for each instance" do
        roles = Patient.all.map { |patient_user| patient_user.roles.map(&:name) }.uniq.flatten
        expect(roles).to eq ["patient"]
      end
    end
  end
end
