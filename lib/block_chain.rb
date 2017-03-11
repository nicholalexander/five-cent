class BlockChain

  def self.generate_genesis_block
    block = Block.new(index: 0, previous_hash: nil, time_stamp: Time.now, data: :genesis_block, block_hash: 'asdf')
  end

end
