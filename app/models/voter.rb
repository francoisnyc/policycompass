class Voter < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  has_many :voter_answers
  has_many :voter_categories
  has_many :categories, :through => :voter_categories

  attr_accessible :email, :name, :formal_affiliation, :location

    validates :name,  presence: true, 
                      length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
