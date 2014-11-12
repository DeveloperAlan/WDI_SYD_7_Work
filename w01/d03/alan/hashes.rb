# alan = {
#   name: "Alan Ng", 
#   age: 19, 
#   address: "123 Fake address"
# }

# puts alan[:name]

# puts alan.keys
# puts alan.values


# alan = {
#   "name" => "Alan Ng"
#   "age" => 21,
#   "address" => "fake street"
# }

# puts alan["address"]

# a = ["Anil", "Erik", "Jonathan"]

# puts a[1]
# a.push "Alan"
# puts a

# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# puts h[1]
# puts h[:two]
# puts h["two"]
# h[3] = "Three"
# h[:four] = 4
# puts h[3]
# puts h[:four]
# puts h


# is = {true => "It's true!", false => "It's false"}
# puts is[2 + 2 == 4] 
# puts is["Erik" == "Jonathan"]
# puts is[9 > 10]
# puts is[0]
# puts is["Erik"]

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}



puts users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers][3] = 7 
puts users["Erik"][:favorite_numbers][3]
users["Alan"] = {}
puts users["Erik"][:favorite_numbers]
puts users["Erik"][:favorite_numbers].min
puts users["Erik"][:favorite_numbers].select {|x| x.even?}
x = users["Jonathan"][:favorite_numbers]
y = users["Erik"][:favorite_numbers]
z = users["Anil"][:favorite_numbers]
lol = x + y + z
(x & y & z).each do |i| 
  puts "The number #{i} is in the array." 
end 
(lol).sort? do |a, b| 
  puts (a <=> b)
end







