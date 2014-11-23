
print "Do you want to start agian? Y/N"
start_again = gets.strip.downcase

if start_again == "y"
  if File.exists? "madt.txt"
    File.unlink('madt.txt')
  end
end


#Step 1: Make sure we have a file
unless File.exist? 'madt.txt'
  file = File.new('madt.txt', 'a+')
  file.close
  puts "Created file"


  #Step 2: Ask questions 
  puts "Write an adjective"
  adjective_one = gets.strip.to_i

  print "Write a verb ending with 'ed'"
  verb_ending_with_ed = gets.strip

  print "Write a noun that is a plural"
  noun_plural_one = gets.strip

  print "Write soemthing that is a liquid"
  liquid = gets.strip

  print "Write another noun that is a plural"
  noun_plural_two = gets.strip

  print "Name a famous person"
  famous_person = gets.strip

  print "Name a place"
  place = gets.strip

  print "Name an occupation"
  occupation = gets.strip

  print "Write a noun"
  noun_one = gets.strip

  print "Write a nationality"
  nationality = gets.strip

  print "Name a female celebrity"
  female_celebrity = gets.strip

  print "Write a second noun"
  noun_two = gets.strip

  print "Name a female friend"
  female_friend = gets.strip

  print "Write a noun that has a plural"
  noun_plural_three = gets.strip

  print "Write down a number"
  number = gets.strip

  print "Write an another adjective"
  adjective_two = gets.strip


  #step 3: Write the data
  File.open('madt.txt', 'a+') do |ad_file|
    ad_file.write("I enjoy long, #{adjective_one} walks on the beach, getting #{verb_ending_with_ed} in the rain and serendipitous encounters with #{noun_plural_one}. 
      I really like piña coladas mixed with #{liquid}, and romantic, candle-lit #{noun_plural_two}. I am well-read from Dr. Seuss to #{famous_person}. 
      I travel frequently, especially to #{place}, when I am not busy with work. (I am a #{occupation}.) 
      I am looking for #{noun_one} and beauty in the form of a #{nationality} goddess. She should have the physique of #{female_celebrity} and the #{noun_two} of #{female_friend}. 
      I would prefer if she knew how to cook, clean, and wash my #{noun_plural_three}. 
      I know I’m not very attractive in my picture, but it was taken #{number} days ago, and I have since become more #{adjective_two}")
  end
else 
  #Step 4: Display the file

  file = File.new('madt.txt', 'r') #'r' makes the file explicit
  puts file.read
end

