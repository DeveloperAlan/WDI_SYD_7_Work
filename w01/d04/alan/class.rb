class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def print_car
puts "This is the car:"
puts "Color: #{self.color}"
puts "Make: #{self.make}"
puts "Model: #{self.model}"
puts "Top speed: #{self.top_speed}"
puts "Year: #{self.year}"
  end
end 

class Warrior
  attr_accessor :strength, :intelligence, :agility

  def print_warrior
    puts "This is the warrior"
    puts "Strength: #{self.strength}"
    puts "Intelligence: #{self.intelligence}"
    puts "Agility: #{self.agility}"
  end 
end

jimmy = Warrior.new
jimmy.strength = 123
jimmy.intelligence = 123
jimmy.agility = 123
jimmy.print_warrior


# jag_e = Car.new
# jag_e.color= "Green"
# jag_e.make = "Jaguar"
# jag_e.model = "E-Type"
# jag_e.year = 1959
# jag_e.top_speed = 241

# jag_e.print_car