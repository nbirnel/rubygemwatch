#require 'net/http'
require 'open-uri'
require 'json'

class RemoteGem
  def initialize gem
    @gem = gem
  end

  def basic 
    JSON.parse open("https://rubygems.org/api/v1/gems/#{@gem}.json").read
  end

  def name
    self.basic["name"]
  end

  def versions
    JSON.parse open("https://rubygems.org/api/v1/versions/#{@gem}.json").read
  end
end
