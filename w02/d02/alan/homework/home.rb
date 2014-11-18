require 'sinatra'
require 'sinatra/reloader'

student = {
  "Jack" => {
    name: "Jack Watson Hamblin"
    skills: ["Ruby", "iOS"]}
  "Alan" => {
    name: "Alan Ng"
    skills: ["Basketball", "Awesome"]}
}

get '/' do
  erb :home, layout: :layout
end