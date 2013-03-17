class Candidate < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  belongs_to :user
  has_many :candidate_answers
  has_many :candidate_categories
  has_many :categories, :through => :candidate_categories

  attr_accessible :display_name, :formal_affiliation, :website
end
