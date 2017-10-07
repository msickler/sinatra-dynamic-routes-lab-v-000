require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number] 
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    (params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]).to_s
  end

  get get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      answer = @number1 + @number2
    elsif @operation == "substract"
      answer = @number1 - @number2
    elsif @operation == "multiply"
      answer = @number1 * @number2
    else @operation == "divide"
      answer = @number1 / @number2
      end 
      "#{answer}"      
  end


end
