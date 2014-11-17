require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :page
end

post '/calculator' do
  @first_number = params[:first_number].to_i
  @second_number = params[:second_number].to_i
  @operator = params[:operator]
  @answer = params[:answer]

  case @operator
  when "Add"
    @answer = @first_number + @second_number
  when "Minus"
    @answer = @first_number - @second_number
  when "Multiply"
    @answer = @first_number * @second_number
  when "Divide"
    @answer = @first_number / @second_number
  end

  erb :result
end

