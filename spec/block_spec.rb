require 'spec_helper.rb'

describe "block" do
  it "should be initialized with index, previous_hash, timestamp, data, and hash" do
    data = {data: 'blurgh'}
    block = Block.new(index: 3, previous_hash: 'asdf', timestamp: Time.now, data: data,
      hash: 'asdf2')
    expect(block.index).to eq(3)
    expect(block.previous_hash).to eq('asdf')
    expect(block.timestamp.class).to eq(Time)
    expect(block.data).to eq({data: 'blurgh'})
    expect(block.hash).to eq('asdf2')
  end

  it "should require all params to be initialized" do
      expect{Block.new(index: 3)}.to raise_error(ArgumentError)
  end


  it "should do this blurgh thing" do
    expect(Block.blurgh).to eq("blurgh")
  end

end