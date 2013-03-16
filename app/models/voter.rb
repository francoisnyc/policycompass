class Voter < ActiveRecord::Base
  include PolicyCompass::Categorizable

  has_many :voter_answers

  attr_accessible :email, :name, :formal_affiliation, :location

  validate :name, presence: true
  validate :email, presence: true
end
