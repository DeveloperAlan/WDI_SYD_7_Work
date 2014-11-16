require_relative "../HappiTails/animal_prompt.rb"
require_relative "../HappiTails/client.rb"

module HappiTails
  class Shelter
    def start
        animals = [
          HappiTails::Animal.new(nil, nil, nil, nil, nil)]

        clients = []
        
        puts "Welcome to HappiTails: The Place where people and animals come together!"
        puts "1. Enter an animal's details"
        puts "2. Enter a client's details"
        puts "Please enter a selection:"
        selection = gets.strip.downcase
      while selection != "q"
        case selection
        when "1" 
          create_animal
        when "2"
          create_client
        when "3"
          list_animals(animals)
        when "4"
          list_clients(clients)
        else 
          puts "Invalid choice"
          start
        end
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
      clients = HappiTails::Client.new(name, num_of_children, age, num_of_pets)
      start
    end

    def list_animals(all_animals)
      print "#{all_animals.each}"
      start
    end

    def list_clients(all_clients)
      print "#{all_clients.each.to_s}"
      start
    end
  end
end
