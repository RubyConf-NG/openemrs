# frozen_string_literal: true

# Doctor model
class Doctor < User
  default_scope { includes(:roles).where(roles: { name: "doctor" }) }

  after_create :assign_default_role

  private

  def assign_default_role
    self.add_role(:doctor) if self.roles.blank?
  end
end
