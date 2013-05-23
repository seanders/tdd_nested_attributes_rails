class Involvement < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :responsibilities_attributes
  belongs_to :project
  belongs_to :user
  has_many :responsibilities
  has_many :regions, :through => :responsibilities
  has_many :roles, :through => :responsibilities
  accepts_nested_attributes_for :responsibilities, :allow_destroy => true
end
