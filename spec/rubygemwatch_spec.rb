load  "#{File.dirname(__FILE__)}/../lib/rubygemwatch.rb"

describe RemoteGem do
  before do
    @gem = RemoteGem.new('title_case')
  end

  it "should get basic info on the gem" do
    @gem.basic.is_a?(Hash).should be_true
  end
end
