require_relative "building"

building = [
  Building.new("123 Fake Street", "Victorian", true, true),
  Building.new("123 Fake Street", "Victorian", true, true)
]

def list_buildings(building)
  building.each do |building|
    puts "#{building.index(building)}: #{building}"
  end
end

def list_apartments(buildings)
  buildings,each do |building|
    building.apartments.each do |apartment|
      puts "#{buildings.apartment.index(apartment)}"
end
puts building

puts "(q)uit, (lb)list buildings"

response = gets.strip

while response!= 'q'
  case response 
  when 'lb'
    list_buildings(building)
  when 'la'
    list_apartments(building)
  else
    puts "The menu item doesn't exist"
  end
  response = gets.strip
end