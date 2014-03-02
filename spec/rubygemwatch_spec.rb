load  "#{File.dirname(__FILE__)}/../lib/rubygemwatch.rb"

describe RemoteGem do
  before do
    @gem = RemoteGem.new('title_case')
  end

  it "should get basic info on the gem" do
    @gem.basic.is_a?(Hash).should be_true
  end

  it "should get the name" do
    @gem.name.should eq "title_case"
  end

  it "should get the versions" do
    @gem.versions.is_a?(Array).should be_true
  end

  it "should get version numbers" do
   @gem.version_numbers.is_a?(Array).should be_true
  end

  it "should get version downloads" do
   @gem.version_downloads.is_a?(Array).should be_true
  end

end
