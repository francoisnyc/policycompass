class Question < ActiveRecord::Base
  attr_accessible :question

  has_many :candidate_answers
end
