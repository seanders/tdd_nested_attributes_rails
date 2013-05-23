class Region < ActiveRecord::Base
  attr_accessible :name
  has_many :responsibilities
  has_many :roles, :through => :responsibilities
  has_many :involvements, :through => :responsibilities
end
