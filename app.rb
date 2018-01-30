require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num**2).to_s
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    num = params[:number].to_i
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    ops = params[:operation].to_sym
    num1 = params[:number1]
    num2 = params[:number2]
    ops_hash ={'add': '+', 'subtract': '-', 'multiply': '*', 'divide': '/'}
    eval(num1 + ops_hash[ops] + num2).to_s
  end


end
