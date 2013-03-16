class Policy < ActiveRecord::Base
  belongs_to :org
  has_many :questions

  attr_accessible :abstract, :link, :name
end
