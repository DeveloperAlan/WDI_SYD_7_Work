require 'sinatra'
require 'sinatra/reloader'


students = {
  "Jack" => {
    name: "Jack Watson Hamblin",
    skills: ["Ruby", "iOS"]
  },

  "Alan" => {
    name: "Alan Ng",
    skills: ["Basketball", "Awesome"]
  }
}

get '/' do
  erb :home, layout: :layout
end

get '/student/:name' do 
  erb :student, layout: :layout
  end