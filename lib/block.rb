class Block 

  attr_accessor :index, :previous_hash, :time_stamp, :data, :block_hash

  def initialize(index:, previous_hash:, time_stamp:, data:, block_hash:)
    @index = index
    @previous_hash = previous_hash
    @time_stamp = time_stamp
    @data = data
    @block_hash = block_hash
  end

end
  

