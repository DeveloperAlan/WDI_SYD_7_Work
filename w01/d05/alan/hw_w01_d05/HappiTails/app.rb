module HappiTails
  class App
    def start

      animals = []

      puts "Welcome to HappiTails: The Place where people and animals come together!"
      puts "1. Enter an animal's details"
      puts "2. Enter a client's details"
      puts "Please enter a selection:"
      selection = gets.strip.to_i
      if selection == 1 
        create_animal
      elsif selection == 2
        create_client
      end
    end


    def create_animal
      puts "Please enter the animal's name"
      name = gets.strip
      puts "Please enter #{name}'s age"
      age = gets.strip.to_i
      puts "Please enter #{name}'s gender"
      gender = gets.strip
      puts "Please enter #{name}'s species"
      species = gets.strip
      puts "Please enter #{name}'s toys"
      toys = gets.strip
      animals = HappiTails::Animal.new(name, age, gender, species, toys)
      puts "Here are the entered details of the animal"
      start
    end

    def create_client
      puts "Please enter the client's name"
      name = gets.strip
      puts "Please enter #{name}'s number of children"
      num_of_children = gets.strip.to_i
      puts "Please enter #{name}'s age"
      age = gets.strip.to_i
      puts "Please enter #{name}'s number of pets"
      num_of_pets = gets.strip.to_i
      HappiTails::Client.new(name, num_of_children, age, num_of_pets)
      start
    end
  end
end
