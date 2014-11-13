class Building 
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
    self.address = address
    self.style = style
    self.has_doorman = has_doorman
    self.is_walkup = is_walkup
    self.num_floors = num_floors
    self.apartments = apartments
  end

  def list
    puts "The Address of the building is: #{address}"
    puts "The style of the building is: #{style}"
    case has_doorman
    when true
      puts "The building has a doorman"
    else
      puts "The building does not have a doorman"
    end 
    case is_walkup
    when true
      puts "The building does not have a elevator"
    else 
      puts "The building does have a elevator"
    end
    puts "The building has #{num_floors} floors"
  end

  def list_all_apps
    puts "Here is the list of all the apartments:"
    puts
  end
end


class Apartment < Building
  attr_accessor :id, :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(id, price, its_occupied, sqft, num_beds, num_baths, renters)
    self.id = id
    self.price = price
    self.is_occupied = is_occupied
    self.sqft = sqft
    self.num_beds = num_beds
    self.renters = renters
  end 

  def list
    puts "The id of this apartment is #{id}"
    puts "The cost of this apartment is #{price}"
    case is_occupied
    when true
      puts "This appartment is occupied"
    else 
      puts "This apparmtnet is not occupied"
    end
    puts "The apartment is #{sqft} square feet"
    puts "The apartment has #{num_beds} bedrooms"
    case renters
    when false
      puts "This apartment is currently not occupied"
    else 
      puts "This apartments is currently being rented by #{renters}"
    end
  end 
  def apply_apartment
    puts "Which apartment would you like to rent?"
    apartment = gets.strip
    apartment.list
  end 
end 

class Person < Apartment
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    self.name = name
    self.age = age
    self.gender = gender
    self.apartment = apartment
  end
  def list
    puts "The applicant's name is #{name}"
    puts "The applicant's age is #{age}"
    puts "The applicant's gender is #{gender}"
  end
end 

alan = Person.new("Alan", 19, "m", nil)
pimp_house = Building.new("123 Awesome St", "Pimp My House", true, false, 90, false)
pimp_apartment = Apartment.new(1, 199999.99, true, 120, 1, 1, false)
okay_apartment = Apartment.new(2, 199999.99, true, 120, 1, 1, false)
pimp_house.list
pimp_apartment.list
alan.apply_apartment
