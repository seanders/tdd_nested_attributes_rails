class Responsibility < ActiveRecord::Base
  belongs_to :involvement
  belongs_to :role
  belongs_to :region
  attr_accessible :description, :region_id
end
