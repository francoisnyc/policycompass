class User < ActiveRecord::Base
  has_many :voter
  has_many :candidate
  has_many :org
  has_secure_password

  attr_accessible :name, :email, :password, :password_confirmation

  before_save { email.downcase! }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, 
                    length: { maximum: 50 }
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true,
                       length: { minimum: 6 }
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

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
