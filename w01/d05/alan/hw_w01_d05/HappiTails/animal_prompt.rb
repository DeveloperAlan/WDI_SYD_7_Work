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
      print name
    end
  end
end