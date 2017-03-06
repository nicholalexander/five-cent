class Block 

  attr_accessor :index, :previous_hash, :timestamp, :data, :hash

  def self.blurgh 
    'blurgh'
  end

  def initialize(index, previous_hash, timestamp, data, hash)
    @index = index
    @previous_hash = previous_hash
    @timestamp = timestamp
    @data = data
    @hash = hash
  end

end
  

