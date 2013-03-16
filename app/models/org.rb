class Org < ActiveRecord::Base
  has_many :policies
  has_many :questions, through: :policies

  attr_accessible :contact_name, :location, :name, :phone_number, :website

  validates :name, :location, :contact_name, :website, :phone_number, presence: true

end