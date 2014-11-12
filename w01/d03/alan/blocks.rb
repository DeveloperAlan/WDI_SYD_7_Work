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