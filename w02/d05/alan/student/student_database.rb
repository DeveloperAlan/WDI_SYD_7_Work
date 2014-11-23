#Step 1: Check file exists?
unless File.exists?('the_db.txt')
  #Create the file
  File.open('student_data.txt', 'a+').close
else 
  the_file_data = File.open('student_data.txt', 'r').read
  puts JSON(the_file_data)
end


puts "Enter student names one at a time"

response = gets.strip

student_name = []


while response != 'q'
  student_name << response
  response = gets.strip
end

#Step 3: Convert to JSON
student_json = JSON.generate(student_name)
puts student_json

File.open('student_database.txt', 'a+') do |sd|
  sd.write(student_json)
end

puts JSON.parse(File.open('student_database.txt', 'r').read)