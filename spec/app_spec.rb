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
  
  context "when the app initializes" do
    it "should create a blockchain when the app starts up" do
      expect(self.app.settings.block_chain.blocks[0].data).to eq(:genesis_block)
    end
  end

  context "/blocks" do
    before do
      get '/blocks'
    end

    it "should respond as json" do
      expect(last_response.original_headers["Content-Type"]).to eq('application/json')
    end

    it "should have the genesis_block first" do
      response = JSON.parse(last_response.body)
      expect(response['blocks'][0]['data']).to eq("genesis_block")
    end
  end



  


end