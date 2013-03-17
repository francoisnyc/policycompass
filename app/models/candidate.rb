class Candidate < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  belongs_to :user
  has_many :candidate_answers
  has_many :candidate_categories
  has_many :categories, :through => :candidate_categories

  attr_accessible :name, :formal_affiliation, :website

  validates :name,  presence: true, 
  					length: { maximum: 50 }
end
