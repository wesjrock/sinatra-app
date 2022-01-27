require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/education' do
  erb :education
end

get '/projects' do
  erb :projects
end
