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

describe GemStats do
  before do
    # remove any of the 'should be new'
    # create the 'should be old'
  end

  it "should write a new file if needed" do
    pending
  end

  it "should append to a file if needed" do
    pending
  end

  it "should write a new file if needed" do
    pending
  end
end
