require_relative "apartment"

class Person < Apartment
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    self.name = name
    self.age = age
    self.gender = gender
    self.apartment = apartment
  end
end 