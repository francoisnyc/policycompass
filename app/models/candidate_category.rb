class CandidateCategory < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :category

  attr_accessible :candidate_id, :category_id
end
