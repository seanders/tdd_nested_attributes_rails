class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :responsibilities
  has_many :regions, :through => :responsibilities
  has_many :involvements, :through => :responsibilities
end
