# frozen_string_literal: true

# Admin model spec
require "rails_helper"

RSpec.describe Admin, type: :model do
  let!(:admin) { create(:admin) }
  let!(:admin_2) { create(:admin) }
  describe "instances" do
    context "when an instance is created" do
      it "should be a kind of the Admin class" do
        expect(admin).to be_kind_of Admin
      end

      it "should have a role of :admin" do
        role = admin.roles.map(&:name).uniq
        expect(role).to eq ["admin"]
      end

      it "should have it's uid prefixed with admin" do
        expect(admin.id).to include "admin"
      end
    end
  end

  describe "default scope" do
    context "when a call to return all instances is made" do
      it "should return only instances of the Admin class" do
        Admin.all.each do |admin_user|
          expect(admin_user).to be_kind_of Admin
        end
      end

      it "should return admin as the role for each instance" do
        roles = Admin.all.map { |admin_user| admin_user.roles.map(&:name) }.uniq.flatten
        expect(roles).to eq ["admin"]
      end
    end
  end
end
