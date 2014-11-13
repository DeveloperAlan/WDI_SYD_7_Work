require_relative "building"

class Apartment < Building
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, its_occupied, sqft, num_beds, num_baths, renters)
    self.price = price
    self.its_occupied = its_occupied
    self.sqft = sqft
    self.num_beds = num_beds
    self.renters = renters

  end 

end 

