class Animal
  def move
    puts "I can move!"
  end
end

class Mammal < Animal
  def eat
    puts "I can eat! Yum yum yum"
  end

  def speak(action)
    puts action 
    puts "i can speak"
  end 
end 

class Monkey < Mammal
  def swing 
    puts "i can swing"
  end

  def speak(action)
    super 
    puts "HoWWOo WhoWo"
  end 
end 

monkey = Monkey.new
monkey.speak("Hi")
monkey.eat