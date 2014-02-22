#require 'net/http'
require 'open-uri'
require 'json'

class RemoteGem
  def initialize gem
  end

  def basic
    JSON.parse open('https://rubygems.org/api/v1/gems/rails.json').read
  end
end
