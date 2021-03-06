require "sinatra"
require "sinatra/reloader"


get '/roman_numeral/:number' do 
  @number = params[:number].to_i

  @string = "I" * @number

  @string = @string.gsub("I" * 1000, "M").
    gsub("I" * 900, "CM").
    gsub("I" * 500, "D").
    gsub("I" * 400, "CD").
    gsub("I" * 100, "C").
    gsub("I" * 90, "XC").
    gsub("I" * 50, "L").
    gsub("I" * 40, "XL").
    gsub("I" * 10, "X").
    gsub("I" * 5, "V")

    erb :blog_post

end