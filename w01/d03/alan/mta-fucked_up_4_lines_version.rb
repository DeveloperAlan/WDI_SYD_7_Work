require 'pry'
  
  nyc_mta = {n_line: ["times square", "34th", "28th", "23rd", "union square", "8th"],
  six_line:["grand central", "33rd", "28th", "23rd", "union square", "astor place"],
  l_line: ["1st", "3rd", "union square", "6th", "8th"]} 

  start_station = ''
  end_station = ''
  start_line = ''
  end_line = ''

def main_menu_locations
  puts "n_line:"
  puts "\t Times Square"
  puts "\t 34th Street"
  puts "\t 28th Street"
  puts "\t 23rd Street"
  puts "\t Union Square"
  puts "\t 8th Street"
  puts "-Line"
  puts "\t Grant Central"
  puts "\t 33rd Street"
  puts "\t 28th Street"
  puts "\t 23rd Street"
  puts "\t Union Square"
  puts "\t Astor Place"
  puts "l_line"
  puts "\t 1st Street"
  puts "\t 3rd Street"
  puts "\t Union Street"
  puts "\t 6th Street"
  puts "\t 8th Street"
end

def starting_location(station)
  if station == "28th street" or station == "23rd street" or station == "8th street"
    puts "Which line is the #{station} you are referring to?"
    case station
      when "28th"
        puts "\tn_line"
        puts "\tsix_line"
        start_line = gets.strip.downcase
          case start_line 
            when "n_line", "six_line"
            else 
              starting_location
            end
      when "23rd"
        puts "\tn_line"
        puts "\tsix_line"
        start_line = gets.strip.downcase
          case start_line 
              when "n_line", "six_line"
              else 
                starting_location
              end
      when "8th"
        puts "\tn_line"
        puts "\tl_line"
        start_line = gets.strip.downcase
          case start_line 
            when "n_line", "six_line"
            else 
              starting_location
            end
    end
  elsif station == "times square"
    start_line = "n_line"
  elsif station == "34th"
    start_line = "n_line"
  elsif station == "union square"
    start_line = "n_line"
  elsif station == "grand central"
    start_line = "six_line_line"
  elsif station == "33rd"
    start_line = "six_line_line"
  elsif station == "astor place"
    start_line = "six_line_line"
  elsif station == "1st"
    start_line = "l_line" 
  elsif station == "3rd"
    start_line = "l_line"   
  elsif station == "6th"
    start_line = "l_line"      
  else
    puts "Location cannot be recognized"
    starting_location
  end 
end 

def ending_location(end_station)
  if end_station == "28th street" or end_station == "23rd street" or end_station == "8th street"
    puts "Which line is the #{end_station} you are referring to?"
    case end_station
      when "28th street"
        puts "\tn_line"
        puts "\tsix_line"
        end_line = gets.strip.downcase
          case end_line 
            when "n_line", "six_line"
            else 
              ending_location
            end
      when "23rd street"
        puts "\tn_line"
        puts "\tsix_line"
        end_line = gets.strip.downcase
          case end_line 
              when "n_line", "six_line"
              else 
                ending_location
              end
      when "8th street"
        puts "\tn_line"
        puts "\tl_line"
        end_line = gets.strip.downcase
          case end_line 
            when "n_line", "six_line"
            else 
              ending_location
            end
    end
  elsif end_station == "times square"
    end_line = "n_line"
  elsif end_station == "34th"
    end_line = "n_line"
  elsif end_station == "union square"
    end_line = "n_line"
  elsif end_station == "grand central"
    end_line = "six_line_line"
  elsif end_station == "33rd"
    end_line = "six_line_line"
  elsif end_station == "astor place"
    end_line = "six_line_line"
  elsif end_station == "1st"
    end_line = "l_line" 
  elsif end_station == "3rd"
    end_line = "l_line"   
  elsif end_station == "6th"
    end_line = "l_line"      
  else
    puts "Location cannot be recognized"
    ending_location
  end 
end 

def number_stops(start_station,start_line,end_station,end_line,subways)
    start_index = subways[start_line].index{ |x| x == "#{start_station}"}
    if start_line == end_line
        end_index = subways[end_line].index(end_station)
        numstop = end_index - start_index
    else
        end_index = subways[start_line].index("union square") - subways[end_line].index("union square") + subways[end_line].index(end_station)
    end
end

puts "Welcome to the NYC subway system"
main_menu_locations
puts "Please specify which station you are on:" 
start_station = gets.strip.downcase
starting_location(start_station)
puts "Please specify which station you wish to go:"
end_station = gets.strip.downcase
ending_location(end_station)
p "n_line"
start_line = gets.strip.downcase
p "six_line"
end_line = gets.strip.downcase

p start_station
p start_line
p end_station
p end_line
  number_stops(start_station, start_line, end_station, end_line, nyc_mta)



