require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i.square.to_s
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    (params[:number] + params[:phrase]).count
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    (params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]).to_s
  end

  get get '/:operation/:number1/:number2' do

  end


end
