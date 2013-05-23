class Project < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date
  has_many :involvements
  has_many :users, :through => :involvements
end
