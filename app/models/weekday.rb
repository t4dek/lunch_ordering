class Weekday < ActiveRecord::Base
  has_many :items
  
  validates :name, uniqueness: true
end
