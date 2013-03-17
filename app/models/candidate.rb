class Candidate < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  has_many :candidate_answers
  has_many :candidate_categories
  has_many :categories, :through => :candidate_categories

  attr_accessible :formal_affiliation, :name, :website, :email

  validates :name,  presence: true, 
  					length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
  					format: { with: VALID_EMAIL_REGEX },
  					uniqueness: { case_sensitive: false }
end
