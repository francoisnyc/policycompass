class Candidate < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  has_many :candidate_answers
  has_many :candidate_categories
  has_many :categories, :through => :candidate_categories

  attr_accessible :formal_affiliation, :name, :website
end
