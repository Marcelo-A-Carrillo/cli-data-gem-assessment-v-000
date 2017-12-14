#!/usr/bin/env ruby

#CLI is responsible for displaying data to the user or getting data back from the user
#The API is responsible to getting data from the API
class HackerNews::CLI
#  HackerNews::API.news
  def news #this is  my call method that I named news
      puts "\t================================================\t"
      puts "\t\tWelcome To The Latest Hacker News"
      puts "\t================================================\t"
      puts ""
      HackerNews::API.newslist
      menu
  end

  def menu
      puts ""
      puts "Please Choose The Article You Want To Read To Get More Details"
      puts "---------------------------------------------------------------"
      listarticle
      input = gets.strip.to_i #this is an input from the user that returns an integer value when the user select their option
      userarticle = HackerNews::NEWSLIST.find(input)
      articledetails(userarticle)
      puts ""
  end

  def listarticle
      HackerNews::NEWSLIST.all.each.with_index(1) do | articles,  index |
      puts "#{index}. #{articles.title}"
  end
end

  def articledetails(userarticle)
    #binding.pry
    puts "Author: #{userarticle.author}" if userarticle.author
    puts "Title: #{userarticle.title}" if userarticle.title
    puts "Description: #{userarticle.description}" if userarticle.description
    puts "Source: #{userarticle.source}" if userarticle.source
    puts "Url: #{userarticle.url}" if userarticle.url

    puts ""
    puts "Do you want to read another article? Please Enter, Yes or No"
    userarticle = gets.strip.downcase
    if input == "yes"
       listarticle
     else
       puts "Thank you for visit us, Happy Reading!"
       exit
    end
  end
