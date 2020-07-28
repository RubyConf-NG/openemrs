# frozen_string_literal: true

# Admin model
class Admin < User
  default_scope { includes(:roles).where(roles: { name: "admin" }) }

  after_create :assign_default_role

  private

  def assign_default_role
    self.add_role(:admin) if self.roles.blank?
  end
end
