students = ["Elmo", "Cookie Monster", "Big Bird"]

# students.each { |student| puts student.capitalize }
# students.select { |student| puts student.capitalize }

cap_students = students.map do |student| 
  student.capitalize
end

p cap_students

students_cap = []
students.each do |student|
  students_cap << student.capitalize
end

p students_cap

students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriad nigg']

splits = students.map do |students|
  student.split(" ").map { |name_part| name_part.capitalize}.join(" ")
end 