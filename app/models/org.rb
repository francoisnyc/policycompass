class Org < ActiveRecord::Base
  belongs_to :user
  has_many :policies
  has_many :questions, through: :policies

  attr_accessible :display_name, :contact_name, :location, :phone_number, :website
end
