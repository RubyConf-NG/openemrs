class User < ApplicationRecord
  include Clearance::User

  include GenerateUid
  VALID_EMAIL = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  rolify

  self.primary_key = :uid

  default_scope { order(created_at: :asc) }

  # validations
  validates_presence_of :name, :email
  validates :email,
            format: { with: VALID_EMAIL },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, unless: :skip_password_validation?

  # callbacks
  before_create :set_uid

  #enum
  enum gender: {
    male: 'male',
    female: 'female',
    unspecified: 'unspecified',
  }

  # scopes
  scope :doctors, -> { includes(:roles).where(roles: { name: "doctor" }) }
  scope :patients, -> { includes(:roles).where(roles: { name: "patient" }) }

  private

  def set_uid
    self.uid = generate_uid
  end
end
