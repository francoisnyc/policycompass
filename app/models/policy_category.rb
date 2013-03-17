class PolicyCategory < ActiveRecord::Base
  belongs_to :policy
  belongs_to :category

  attr_accessible :category_id, :policy_id
end
