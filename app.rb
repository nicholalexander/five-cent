require 'sinatra'
require 'rubygems'
require 'bundler'

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each {|file| require file }

configure do
  set :server, 'thin'
  @block_chain = BlockChain.new
  set :block_chain, @block_chain
end

get '/' do
  'this is five-cents.'
end

get '/blocks' do
  content_type :json
  settings.block_chain.as_json
end

post '/mine_block' do
  # generate new block
  # insert it into block chain
  # display that block.
end
