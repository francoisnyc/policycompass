class Voter < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  belongs_to :user
  has_many :voter_answers
  has_many :voter_categories
  has_many :categories, :through => :voter_categories

  attr_accessible :display_name, :formal_affiliation, :location
end
