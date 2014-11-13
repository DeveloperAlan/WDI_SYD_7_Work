class Printer
   def print(page, page_number = 1)
    puts "#{page_number}: #{page}"
  end 
end

canon = Printer.new
canon.print("This is the current page 1")
canon.print("This is the current page 2", 2)
canon.print("This is the current page 3", 3)
canon.print("This is the current page 4", 4)


jag_e = Car.new("Green", "Jagaur", "E-Type", 1959, 241)

class Car

attr_accessor :color, :make, :model, :year, :top_speed
  def initialize(color, make, model, year, top_speed)
    self.color = color
    self.make = make
    self.model = model
    self.year = year
    self.top_speed = top_speed
  end 