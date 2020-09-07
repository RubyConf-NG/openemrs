class User < ApplicationRecord
  include GenerateUid
  VALID_EMAIL = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  rolify
  has_secure_password

  self.primary_key = :uid

  default_scope { order(created_at: :asc) }
  
  enum gender: {
    male: "male",
    female: "female",
    unspecified: "unspecified",
  }

  # validations
  validates_date :date_of_birth
  validates_presence_of :name, :email, :date_of_birth
  validates :email,
            format: { with: VALID_EMAIL },
            uniqueness: { case_sensitive: false }

  # callbacks
  before_create :set_uid

  # scopes
  scope :doctors, -> { includes(:roles).where(roles: { name: "doctor" }) }
  scope :patients, -> { includes(:roles).where(roles: { name: "patient" }) }

  private

  def set_uid
    self.uid = generate_uid
  end
end
