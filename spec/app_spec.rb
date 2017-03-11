# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "five-cent" do

  context "routes" do
    describe "blocks" do
      it "should respond to /" do
        get '/'
        expect(last_response).to be_ok
      end

      it "should respond to get /blocks" do
        get '/blocks'
        expect(last_response).to be_ok
      end

      it "should respond to post /mine_block" do
        post '/mine_block'
        expect(last_response).to be_ok
      end
    end
  end

end