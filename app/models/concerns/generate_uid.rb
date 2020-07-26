# frozen_string_literal: true

# module for generating uids

module GenerateUid
  extend ActiveSupport::Concern

  def generate_uid
    base_klass = self.class
    token = "#{self.class.to_s.downcase}-#{SecureRandom.hex}"
    token_exists = base_klass.find_by(uid: token)

    while token_exists
      token = "#{base_klass.to_s.downcase}-#{SecureRandom.hex}"
      token_exists = base_klass.find_by(uid: token)
    end
    token
  end
end
