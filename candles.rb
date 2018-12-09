require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  File.read(File.join('public', 'index1.html'))
end

get '/candles' do
    @age=params[:age].to_i
    erb :candles
end