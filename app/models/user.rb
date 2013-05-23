class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :involvements_attributes
  has_many :involvements
  has_many :projects, :through => :involvements
  accepts_nested_attributes_for :involvements, :allow_destroy => true
end
