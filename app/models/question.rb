class Question < ActiveRecord::Base
  belongs_to :policy

  attr_accessible :question

end
