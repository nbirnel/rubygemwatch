#require 'net/http'
require 'open-uri'
require 'json'

class GemCurrentStats
  attr_reader :versions
  def initialize gem
    @gem = gem
    @now = Time.now
    @versions = JSON.parse open("https://rubygems.org/api/v1/versions/#{@gem}.json").read
  end

  def version_downloads
    h = { :time => @now, :downloads => dl = Hash.new }
    @versions.each do |ver| 
      dl[ver["number"]] = ver["downloads_count"]
    end
    h
  end
end

class GemStats
end
