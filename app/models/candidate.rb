class Candidate < ActiveRecord::Base
  attr_accessible :formal_affiliation, :name, :website

  has_many :candidate_answers
end
