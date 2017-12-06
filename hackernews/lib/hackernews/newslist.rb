#!/usr/bin/env ruby
class HackerNews::NEWSLIST
  attr_accessor :author, :title, :description, :source, :url
  @@all = []

  def self.new_from_json(hacker_news_data)
    #binding.pry
    self.new(
     hacker_news_data["author"],
     hacker_news_data["title"],
     hacker_news_data["description"],
     hacker_news_data["source"],
     hacker_news_data["url"]
    )
  end

  def initialize(author=nil, title=nil, description=nil, source=nil, url=nil)
      @author = author
      @title = title
      @description = description
      @source = source
      @url = url
      #binding.pry
      @@all << self
  end

  def self.all
    @@all
  end

def self.find(allarticles)
self.all[allarticles -1]
end

end
