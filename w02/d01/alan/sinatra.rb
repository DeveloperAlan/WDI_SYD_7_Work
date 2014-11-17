require "sinatra"
require "sinatra/reloader"


get "search/:query/:sort" do 
  "#{params[:query]} #{params[:sort]}"
end

post "/blog" do
  @title = params[:title]
  @content = params[:content]
  erb :blog_post, layout: :page
end



post "/users/" do 
  "You signed up with the email address: " + 
  "#{params[:email]}" +
  " and password: #{params[:password]}"
end 

post "/blogposts/" do
  "Title of blog post is: #{params[:title]}\n" +
  " and content: #{params[:content]}"
end

get "/" do
  "Welcome home"
end

get "/search/:query" do 
  "You are searching for: #{params[:query]}"
end

get "/hello/:name" do 
  "Hello #{params[:name]}"
end

get "/screencasts" do 
  "The list of screencasts"
end