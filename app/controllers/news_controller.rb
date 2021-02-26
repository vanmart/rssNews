require 'net/http'
class NewsController < ApplicationController
  
  def index
    uri = URI('https://opencontent.org/blog/feed')
    xml = Net::HTTP.get(uri) 
    @feed = Feedjira.parse(xml)
  end
end
