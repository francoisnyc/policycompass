class User < ActiveRecord::Base
  has_one :voter
  has_one :candidate
  has_one :org
  has_secure_password

  attr_accessible :email, :password, :password_confirmation

  before_save { |user| user.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  def voter?
    voter.present?
  end

  def candidate?
    candidate.present?
  end

  def org?
    org.present?
  end
end
