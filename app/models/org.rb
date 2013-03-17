class Org < ActiveRecord::Base
  has_many :policies
  has_many :questions, through: :policies

  attr_accessible :contact_name, :location, :name, :phone_number, :website

  validates :name,  presence: true, 
  					length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
  					format: { with: VALID_EMAIL_REGEX },
  					uniqueness: { case_sensitive: false }
end
