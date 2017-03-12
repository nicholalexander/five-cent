# app.rb
require 'sinatra'
require 'rubygems'
require 'bundler'
require 'pry'

Bundler.require(:default)

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each {|file| require file }

configure do
  set :server, 'thin'
  @block_chain = BlockChain.new
end

get '/' do
  'this is five-cent.'
end

get '/blocks' do
  
end

post '/mine_block' do
end
