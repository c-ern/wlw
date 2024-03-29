class Company < ActiveRecord::Base
  attr_accessible :location, :name, :facilities_attributes

  has_many :affiliations
  has_many :facilities, :through => :affiliations
  accepts_nested_attributes_for :facilities
end
