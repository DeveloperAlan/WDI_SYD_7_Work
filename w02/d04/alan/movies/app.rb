require "sinatra"
require "sinatra/reloader"
require "httparty"


get '/' do 
  erb :home, layout: :layout
end

get '/result' do 
  if params[:movie_title]
    search_term = params[:movie_title].gsub(' ', '+')
    #George of the Jungle
    #George+of+the+Jungle
    response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
    @movie = JSON(response)
  end
  erb :result, layout: :layout
end





