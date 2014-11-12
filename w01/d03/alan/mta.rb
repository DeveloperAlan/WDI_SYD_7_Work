require 'rainbow'

subways = {
    "n_line" => {
        stops: ["times square", "34th", "28th", "23rd", "union square", "8th"],
    },
    "six_line" => {
        stops: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Aston"],    
    },
    "l_line" => {
        stops: ["1st", "3rd", "Union Square", "6th", "8th"],
    },
}


all_subways = subways["n_line"][:stops] << subways["six_line"][:stops] << subways["l_line"][:stops]
full_subways = all_subways.flatten.uniq
all_lines = ["n_line", "six_line", "l_line"]

# Starting
puts Rainbow("What station would you like to get on at?").yellow.inverse
puts "Possible options include:"
p full_subways
start_station = gets.strip
puts Rainbow("What line would you like to get on at?").green.inverse
puts "Possible options include:"
p all_lines
start_line = gets.strip

# Ending
puts Rainbow("What station would you like to get off at?").yellow.inverse
puts "Possible options include:"
p full_subways
end_station = gets.strip
puts Rainbow("What line would you like to get off at?").green.inverse
puts "Possible options include:"
p all_lines
end_line = gets.strip


def number_stops(start_station,start_line,end_station,end_line,subways)
    start_index = subways[start_line][:stops].index(start_station)
    if start_line == end_line
        end_index = subways[end_line][:stops].index(end_station)
        numstop = end_index - start_index
    else
        to_union = subways[start_line][:stops].index("Union Square") - subways[start_line][:stops].index(start_station)
        from_union = subways[end_line][:stops].index(end_station) - subways[end_line][:stops].index("Union Square")
        numstop = to_union.abs + from_union.abs
    end
end

total_stops = number_stops(start_station,start_line,end_station,end_line,subways)

puts Rainbow("There are #{total_stops} stops from #{start_station} on the #{start_line} to #{end_station} on the #{end_line}.").blue.inverse