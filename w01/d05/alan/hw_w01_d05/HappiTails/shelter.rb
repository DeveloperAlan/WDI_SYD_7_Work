require_relative "../HappiTails/animal_prompt.rb"
require_relative "../HappiTails/client.rb"

module HappiTails
  class Shelter
    attr_accessor :client, :animal

    def initialize(client, animal)
      self.client = client
      self.animal = animal
    end

    
  end
end
