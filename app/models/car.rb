class Car < ActiveRecord::Base
  validates_presence_of :color, presence:true
  validates :year, presence:true, inclusion: { in: 1980..Date.today.year }
  validates :mileage, presence:true, :numericality => {:greater_than => 0}
end
