#require 'net/http'
require 'open-uri'
require 'json'

class RemoteGem
  attr_reader :versions, :basic
  def initialize gem
    @gem = gem
    @versions = JSON.parse open("https://rubygems.org/api/v1/versions/#{@gem}.json").read
    @basic = JSON.parse open("https://rubygems.org/api/v1/gems/#{@gem}.json").read
  end

  def name
    self.basic["name"]
  end

  def version_numbers
    @versions.map{|ver| ver["number"]}
  end

  def downloads
    @versions.map{|ver| ver["downloads_count"]}
  end

  def version_downloads
    h = Hash.new
    @versions.each do |ver| 
      h[ver["number"]] = ver["downloads_count"]
    end
    h
  end


end
