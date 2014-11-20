require "sinatra"
require "sinatra/reloader"
require "httparty"

get "/" do
  erb :home, layout: :layout
end

get "/search" do
    movies_search = params[:movie].gsub(' ', '+')
    response = HTTParty.get("http://www.omdbapi.com/?s=#{movies_search}")
    @movie_list = JSON(response)["Search"]

   erb :search, layout: :layout
end

get "/movies/:id" do
    if params[:id] #'If' movie title exists, do the next thing
    search_term = params[:id]
    response = HTTParty.get("http://www.omdbapi.com/?i=#{search_term}&tomatoes=true")
    @movie = JSON(response) 
    @movie_name = JSON(response)["Title"]
    title_response = HTTParty.get("http://www.omdbapi.com/?s=#{@movie_name}")
    @movie_list = JSON(title_response)["Search"]
  end
  erb :movies, layout: :layout
end