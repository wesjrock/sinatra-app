require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/education' do
  erb :education
end

get '/pr' do
  erb :pr
end
