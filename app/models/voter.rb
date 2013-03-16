class Voter < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  has_many :voter_answers
  has_many :voter_categories
  has_many :categories, :through => :voter_categories

  attr_accessible :email, :name, :formal_affiliation, :location

  validate :name, presence: true
  validate :email, presence: true
end
