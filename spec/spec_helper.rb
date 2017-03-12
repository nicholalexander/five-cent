require 'rack/test'
require 'rspec'
require 'pry'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../app.rb', __FILE__

# require the lib folder
# Dir[File.expand_path '../../lib/*', __FILE__].each do |file|
#   require file
# end

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }