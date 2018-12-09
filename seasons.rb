require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  File.read(File.join('public', 'index2.html'))
end

get '/month' do
    @month=params[:month].to_i
    erb :seasons
end