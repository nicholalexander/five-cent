# app.rb
require 'sinatra'
require 'rubygems'
require 'bundler'
Bundler.require(:default)

configure do
  set :server, 'thin'
end

Dir["#{File.dirname(__FILE__)}/lib*.rb"].each {|file| require file }

get '/' do
  'this is five-cent.'
end

get '/blocks' do
end

post '/mine_block' do
end
