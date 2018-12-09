require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/count' do
    @count=params[:count].to_i
    erb :count
end