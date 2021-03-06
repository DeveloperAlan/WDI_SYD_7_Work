puts `clear`

require 'rainbow'

# # A user should be given a menu of operations
# # A user should be able to choose from the menu


def menu
  puts `clear`
  puts Rainbow("*** Welcome to the calculator ***").magenta.bright.underline
  puts Rainbow("Choose your type of calculator").green.bright.blink
  print Rainbow("(b)").green + "asic or " + Rainbow("(a)").yellow + "dvance or " + Rainbow("(t)").magenta + "emperature or " + Rainbow("(q)").red + "uit: "
  gets.chomp.downcase
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc


  print Rainbow("(a)").green + "dd, " + Rainbow("(s)").yellow + "ubtract, " + Rainbow("(m)").red + "ultiply, " + Rainbow("(d)").cyan + "ivide: "
  basic_function = gets.chomp.downcase
  print "Enter first number: "
  first_number = gets.chomp.to_f
  print "Enter second number: "
  second_number = gets.chomp.to_f
  case basic_function
  when "a"
    answer = first_number + second_number
    puts "Your answer is #{answer}"
  when "s"
    answer = first_number - second_number
    puts "Your answer is #{answer}"
  when "m"
    answer = first_number * second_number
    puts "Your answer is #{answer}"
  when "d"
    answer = first_number / second_number
    puts "Your answer is #{answer}"
  
  else
    puts "incorrect"
  end 
  gets
  menu
end

def advanced_calc
  print Rainbow("(p)").green + "ower, " + Rainbow("(s)").yellow + "qrt: " + Rainbow("(C)").cyan + "ube Root: "
  advanced_function = gets.chomp.downcase
  print "Enter first number: "
  first_number = gets.chomp.to_f
  case advanced_function
  when "p"
    print "Enter second number: "
    second_number = gets.chomp.to_f
    answer = first_number ** second_number
    puts "Your answer is #{answer}"
  when "s" 
    answer = Math.sqrt(first_number)
    puts "Your answer is #{answer}"
  when "c"
    answer = Math.cbrt(first_number)
    puts "Your answer is #{answer}"
  else
    puts "incorrect"
    advanced_calc
  end
  gets
  menu
end

def temperature
  print Rainbow("(c)").green + "elcius, " + Rainbow("(f)").yellow + "ahrenheit: "
  temperature_type = gets.chomp.downcase
  print "Enter temperature: "
  degree = gets.chomp.to_i
  case temperature_type
  when "c"
    answer = degree * 9/5 + 32
    puts "The temperature is #{answer} in fahrenheit"
  when "f" 
    answer = (degree - 32) * 5/9
    puts "The temperature is #{answer} in celcius"
  else
    puts "incorrect"
    temperature
  end
  gets
  menu
end


response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  case response
  when "b"
    basic_calc
  when "a"
    advanced_calc
  when "t"
    temperature   
  else 
    puts "incorrect"
  response = menu
  end

end

