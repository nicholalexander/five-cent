require 'spec_helper.rb'

  describe "BlockChain" do
    context "generate_genesis_block" do
      before do
        @time_now = 1489198803239
        allow(DateTime).to receive_message_chain(:now, :strftime).and_return(@time_now)
        @initial_block = BlockChain.generate_genesis_block
      end

      it "should have a self method which returns an initial block" do
        expect(@initial_block.block_hash).to eq("asdf")
      end

      it "should have the symbol :genesis_block in it's initial block" do
        expect(@initial_block.data).to eq(:genesis_block)
      end

      it "should have an index of 0" do
        expect(@initial_block.index).to eq(0)
      end

      it "should have a previous_hash of nil" do
        expect(@initial_block.previous_hash).to be(nil)
      end

      it "should have a time stamp of Time.now" do
        expect(@initial_block.time_stamp).to eq(@time_now)
      end

      it "should have a time stamp in seconds since epoch" do
        expect(@initial_block.time_stamp.class).to eq(Integer)
      end

        
      

    end

    context "initialize" do
      it "should have a genesis block at position 0" do
        block_chain = BlockChain.new
        expect(block_chain.blocks[0].data).to eq(:genesis_block)
      end 

    end

    it "should be the only block with a previous_hash of nil"
    it "should be the only block with an index of 0"
    it "should be the only blcok with a timestamp of 0"
  end


