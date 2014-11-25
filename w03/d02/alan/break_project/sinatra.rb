require "sinatra"
require "sinatra/reloader"

get '/name' do 

erb :showname, layout: :layout
end 

post "/name" do 

@name = params[:name]

redirect '/name'
end