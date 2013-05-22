class Involvement < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :end_date, :start_date
end
