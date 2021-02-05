# frozen_string_literal: true

# UserAbility class

module Abilities
  class PatientAbility
    include CanCan::Ability
    def initialize(user)
      return if user.nil?
      
      if user.has_role?(:doctor) || user.has_role?(:admin)
        can :manage, Patient
      end
    end
  end
end
