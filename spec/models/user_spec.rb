# frozen_string_literal: true

# User model spec
require "rails_helper"

RSpec.describe User, type: :model do
  describe "presence validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:date_of_birth) }
  end

  describe "uniqueness validations" do
    subject { build(:user) }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end

  describe "email regex" do
    subject { build(:user) }
    context "when a valid email is passed" do
      it "returns a valid object" do
        subject.email = "kachi@kachi.com"
        expect(subject).to be_valid
      end
    end

    context "when an invalid email is passed" do
      it "returns an invalid object" do
        subject.email = "kachi@"
        expect(subject).to_not be_valid
      end
    end
  end
end
