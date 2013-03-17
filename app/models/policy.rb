class Policy < ActiveRecord::Base
  include PolicyCompass::Categorizable

  belongs_to :org
  has_many :questions
  has_many :policy_categories
  has_many :categories, :through => :policy_categories

  attr_accessible :abstract, :link, :name

  validates :name, :abstract, presence: true

end
