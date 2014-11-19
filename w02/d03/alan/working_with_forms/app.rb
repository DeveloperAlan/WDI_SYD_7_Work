require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  erb :home
end

post '/buy-product' do 
  params[:price]
  params[:qty]
end