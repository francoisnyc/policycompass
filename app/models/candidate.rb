class Candidate < ActiveRecord::Base
  include PolicyCompass::Categorizable

  has_many :candidate_answers

  attr_accessible :formal_affiliation, :name, :website
end
