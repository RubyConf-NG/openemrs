# frozen_string_literal: true

# Doctor model spec
require "rails_helper"

RSpec.describe Doctor, type: :model do
  let!(:doctor) { create(:doctor) }
  let!(:doctor_2) { create(:doctor) }
  describe "instances" do
    context "when an instance is created" do
      it "should be a kind of the Doctor class" do
        expect(doctor).to be_kind_of Doctor
      end

      it "should have a role of :doctor" do
        role = doctor.roles.map(&:name).uniq
        expect(role).to eq ["doctor"]
      end

      it "should have it's uid prefixed with doctor" do
        expect(doctor.id).to include "doctor"
      end
    end
  end

  describe "default scope" do
    context "when a call to return all instances is made" do
      it "should return only instances of the Doctor class" do
        Doctor.all.each do |doctor_user|
          expect(doctor_user).to be_kind_of Doctor
        end
      end

      it "should return doctor as the role for each instance" do
        roles = Doctor.all.map { |doctor_user| doctor_user.roles.map(&:name) }.uniq.flatten
        expect(roles).to eq ["doctor"]
      end
    end
  end
end
