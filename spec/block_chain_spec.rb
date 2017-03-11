require 'spec_helper.rb'

  describe "BlockChain" do
    it "should have a self method which returns an initial block" do
      initial_block = BlockChain.generate_genesis_block
      expect(initial_block.block_hash).to eq("816534932c2b7154836da6afc367695e6337db8a921823784c14378abed4f7d7")
    end

  end


