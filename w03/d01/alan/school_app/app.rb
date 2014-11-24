require "sinatra"
require "sinatra/reloader"
require "pg"

def run_squl(sql_string)
  connection = PG.connect(dbname: "school", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  return result
end

get '/' do 
  @students = run_sql("SELECT * FROM students;")

  erb :home, layout: :layout
end

get "/students/new" do
  erb :new_student_form
end

get "/students/:id" do 
  student_id = params[:id]
  @student = run_sql("SELECT * FROM students WHERE id=#{student_id};").first

  erb :students
end

post '/students' do 
  @student = runsql("INSERT INTO students(first_name, last_name, dob) VALUES ('#{params["first_name"]}', 
    '#{params["last_name"]}', 
    '#{params["dob"]}')")

  redirect "/students/#{@student["id"]}"
end