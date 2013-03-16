class Voter < ActiveRecord::Base
  has_many :voter_answers

  attr_accessible :email, :name, :formal_affiliation, :location

  validates :name, presence: true
  validates :email, presence: true
end
