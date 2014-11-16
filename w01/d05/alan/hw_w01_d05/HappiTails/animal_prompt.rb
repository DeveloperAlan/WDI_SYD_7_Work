module HappiTails
  class Animal
   
    attr_accessor :name, :age, :gender, :species, :toys
   
    # Used when creating a new animal.
    #   Example:
    #       Animal.new('Timmy', 4, 'male', 'toad')
    def initialize(name, age, gender, species, toys)
      self.name = name
      self.age = age
      self.gender = gender
      self.species = species
      self.toys = toys
    end
   
    # When we display the animal using puts or print, the
    #   to_s method is called to pretty print an Animal
    def to_s
      puts "Name: #{name}"
      puts "Age: #{age}"
      puts "Gender: #{gender}"
      puts "Species: #{species}"
      puts "Toys: #{toys}"
    end

    def create_animal
      puts "What is the animal's name?"
      name = gets.strip
      puts "What is the #{name}'s age?"
      age = gets.strip.to_i
      puts "What is the #{name}'s gender?"
      gender = get.strip
      puts "What type of animal is #{name}?"
      species = gets.strip 
      puts "What type of toys does #{name} like?"
      toys = gets.strip
      new.initialize(name, age, gender, species, toys)
    end
  end
end