class VoterCategory < ActiveRecord::Base
  belongs_to :voter
  belongs_to :category

  attr_accessible :candidate_id, :category_id
end
