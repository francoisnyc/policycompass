class Question < ActiveRecord::Base
  belongs_to :policy
  has_many :voter_answers
  has_many :candidate_answers

  attr_accessible :question

  validates :question, presence: true

end
