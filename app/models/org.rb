class Org < ActiveRecord::Base
  belongs_to :user
  has_many :policies
  has_many :questions, through: :policies

  attr_accessible :contact_name, :location, :name, :phone_number, :website

  validates :name,  presence: true, 
  					length: { maximum: 50 }
end
