class Room < ActiveRecord::Base
  attr_accessible :bed, :desc , :name
  has_many :reservation
end
