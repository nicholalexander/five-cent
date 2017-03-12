require 'spec_helper.rb'

describe "block" do

  before do
    @time_now = 1489198803239
    allow(DateTime).to receive_message_chain(:now, :strftime).and_return(@time_now)

    @data = {data: 'blurgh'}
    @block = Block.new(index: 3, previous_hash: 'asdf', time_stamp: DateTime.now.strftime('%Q').to_i, data: @data,
      block_hash: 'asdf2')
  end

  it "should be initialized with index, previous_hash, timestamp, data, and hash" do
    expect(@block.index).to eq(3)
    expect(@block.previous_hash).to eq('asdf')
    expect(@block.time_stamp.class).to eq(Integer)
    expect(@block.data).to eq(@data)
    expect(@block.block_hash).to eq('asdf2')
  end

  it "should require all params to be initialized" do
      expect{Block.new(index: 3)}.to raise_error(ArgumentError)
  end

  it "should render as a hash" do
    expect(@block.to_hash).to eq({
        index: 3, 
        previous_hash: 'asdf', 
        time_stamp: @time_now, 
        data: @data,
        block_hash: 'asdf2'
      })
  end

  it "should render as json" do
    expect(@block.as_json).to eq(
      "{\"index\":3,\"previous_hash\":\"asdf\",\"time_stamp\":1489198803239,\"data\":{\"data\":\"blurgh\"},\"block_hash\":\"asdf2\"}"
      )
  end

end