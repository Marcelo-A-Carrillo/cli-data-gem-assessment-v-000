#!/usr/bin/env ruby

#CLI is responsible for displaying data to the user or getting data back from the user
#The API is responsible to getting data from the API
class HackerNews::CLI
#  HackerNews::API.news
  def news #this is  my call method that I named news
      puts "========= Welcome To The Latest Hacker News ========="
      puts ""
      HackerNews::API.newslist
      menu
  end

  def menu
      puts "Please choose the amount of articles you want to read at a time."
      listarticle
      input = gets.strip.to_i #this is an input from the user that returns an integer value when the user select their option
      userarticle = HackerNews::NEWSLIST.find(input)
      articledetails(userarticle)
  end


  def listarticle
      HackerNews::NEWSLIST.all.each.with_index(1) do | articles,  index |
      puts "#{index}. #{articles.title}"
  end
end

  def articledetails(userarticle)
    binding.pry
    puts "author: #{userarticle.author}" if userarticle.author
    puts "title: #{userarticle.title}" if userarticle.title
    puts "description: #{userarticle.description}" if userarticle.description
    puts "source: #{userarticle.source}" if userarticle.source
    puts "url: #{userarticle.url}" if userarticle.url
  end

end
