class Car
  attr_accessor :name, :max_speed, :color, :seating_material, :model, :transmission

  def new_car
    puts "This is #{self.name}'s car"
    puts "It's max speed is #{self.max_speed}"
    puts "The color of the car is: #{self.color}"
    puts "The seating material of the car is #{self.seating_material}"
  end

  def model
    puts "My #{self.model} is crap"
  end

  def transmission 
    puts "My transmission is #{self.transmission}"
  end 
end

class Ferrari < Car
  attr_accessor :transmission
  def turbo
    puts ("Turboing, the speed is currently at #{+ max_speed * 5}")
  end 

  def transmission1
    puts "The transmission is #{self.transmission}"
  end
end

alans = Ferrari.new
alans.name = "Alan"
alans.max_speed = 5000
alans.color = "Asian"
alans.seating_material = "BAUS leather"
alans.model = "Toyota"
alans.transmission = "auto"
puts alans.new_car

puts alans.turbo
puts alans.transmission

