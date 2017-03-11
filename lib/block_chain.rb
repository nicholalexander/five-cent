class BlockChain

  def self.generate_genesis_block
    block = Block.new(index: 0, previous_hash: nil, time_stamp: DateTime.now.strftime('%Q').to_i, data: :genesis_block, block_hash: 'asdf')
  end

end
