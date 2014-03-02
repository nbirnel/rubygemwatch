load  "#{File.dirname(__FILE__)}/../lib/rubygemwatch.rb"

describe GemCurrentStats do
  before do
    @gem = GemCurrentStats.new('title_case')
  end

  it "should get the versions" do
    @gem.versions.is_a?(Array).should be_true
  end

  it "should get a hash of version downloads" do
    @gem.version_downloads.is_a?(Hash).should be_true
  end
end
