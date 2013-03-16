class Voter < ActiveRecord::Base
  has_many :voter_answers, :questions through: :voter_answers

  attr_accessible :email, :name, :formal_affiliation, :location
end
