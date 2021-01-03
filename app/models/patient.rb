# frozen_string_literal: true

# Patient model
class Patient < User
  default_scope { includes(:roles).where(roles: { name: "patient" }) }
  has_one :biometric, dependent: :destroy
  accepts_nested_attributes_for :biometric
  
  # validations
  validates_absence_of :password

  after_create :assign_default_role

  private

  def assign_default_role
    self.add_role(:patient) if self.roles.blank?
  end

  def skip_password_validation?
    true
  end
end
