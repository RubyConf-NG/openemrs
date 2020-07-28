# frozen_string_literal: true

# Patient model
class Patient < User
  default_scope { includes(:roles).where(roles: { name: "patient" }) }

  after_create :assign_default_role

  private

  def assign_default_role
    self.add_role(:patient) if self.roles.blank?
  end
end
