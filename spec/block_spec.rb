require 'spec_helper.rb'

describe "block" do
  it "should be initialized with index, previous_hash, timestamp, data, and hash" do
    data = {data: 'blurgh'}
    block = Block.new(index: 3, previous_hash: 'asdf', time_stamp: Time.now, data: data,
      block_hash: 'asdf2')
    expect(block.index).to eq(3)
    expect(block.previous_hash).to eq('asdf')
    expect(block.time_stamp.class).to eq(Time)
    expect(block.data).to eq({data: 'blurgh'})
    expect(block.block_hash).to eq('asdf2')
  end

  it "should require all params to be initialized" do
      expect{Block.new(index: 3)}.to raise_error(ArgumentError)
  end

end