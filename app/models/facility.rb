class Facility < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :affiliations
  has_many :companies, :through => :affiliations
end
