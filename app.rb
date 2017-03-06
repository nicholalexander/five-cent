# app.rb
require 'sinatra'

configure do
  set :server, 'thin'
end

get '/' do
  'blonk'
end



