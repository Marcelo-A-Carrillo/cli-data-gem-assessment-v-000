#!/usr/bin/env ruby

#CLI is responsible for displaying data to the user or getting data back from the user
#The API is responsible to getting data from the API
class HackerNews::CLI
#  HackerNews::API.news
  def news #this is  my call method that I named news
      puts "----- Welcome To The Latest Hacker News -----"
      puts ""
      menu
  end

  def menu
      puts "Please choose the amount of articles you want to read at a time."
      puts "1. (1 to 5)"
      puts "2. (5 to 10)"
      puts "3. (10 to 20)"

      input = gets.strip.to_i #this is an input from the user that returns an integer value when the user select their option
      if input == 1
      HackerNews::API.newslist
      puts "From 1 to 5 articles will display"
      elsif input == 2
      puts "From 5 to 10 articles will display"
      elsif input == 3
      puts "From 10 to 20 articles will display"
      else
      puts "We cannot display more than 20 articles at a time!"
      menu #this will return the user to the beginning
     end
  end

end
