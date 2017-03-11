# app.rb
require 'sinatra'

configure do
  set :server, 'thin'
end

get '/' do
  'this is five-cent.'
end

get '/blocks' do
end

post '/mine_block' do
end
