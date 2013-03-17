class Voter < ActiveRecord::Base
  include PolicyCompass::Categorizable
  include PolicyCompass::Answerer

  belongs_to :user
  has_many :voter_answers
  has_many :voter_categories
  has_many :categories, :through => :voter_categories

  attr_accessible :name, :formal_affiliation, :location

  validates :name,  presence: true, 
                    length: { maximum: 50 }
end
