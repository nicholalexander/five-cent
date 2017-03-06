# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "five-cent" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should return blonk at / " do
    get '/'
    expect(last_response.body).to eq("blonk")
  end

end