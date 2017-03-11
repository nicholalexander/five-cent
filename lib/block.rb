class Block 

  attr_accessor :index, :previous_hash, :timestamp, :data, :hash

  def initialize(index:, previous_hash:, timestamp:, data:, block_hash:)
    @index = index
    @previous_hash = previous_hash
    @timestamp = timestamp
    @data = data
    @block_hash = block_hash
  end

end
  

