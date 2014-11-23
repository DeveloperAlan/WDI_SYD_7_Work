
print "Do you want to start agian? Y/N"
start_again = gets.strip.downcase

if start_again = "y"
  if File.existts? "ad.txt"
    File.unlink('ad.txt')
  end
end


#Step 1: Make sure we have a file
unless File.exist? 'ad.txt'
  file = File.new('ad.txt', 'a+')
  file.close
  puts "Created file"


  #Step 2: Ask questions 
  puts "Number of KMs"
  number_of_kms = gets.strip.to_i

  print "What kind of doors does it have:"
  door_type = gets.strip

  print "Does it have a sunroof:"
  sunroof = gets.strip

  print "When kind of engine:"
  engine = gets.strip

  print "What is the asking price?"
  price = gets.strip

  #step 3: Write the data
  File.open('ad.txt', 'a+') do |ad_file|
    ad_file.write("Number of KMs: #{number_of_kms}\n")
    ad_file.write("Door Type: #{door_type}\n")
    ad_file.write("Sun roof: #{sunroof}\n")
    ad_file.write("Engine: #{engine}\n")
    ad_file.write("Price: #{price}")
  end
else 
  #Step 4: Display the file

  file = File.new('ad.txt', 'r') #'r' makes the file explicit
  puts file.read
end

