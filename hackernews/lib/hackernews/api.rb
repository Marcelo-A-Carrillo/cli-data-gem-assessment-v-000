#use RestClient to open API
#Use JSON to parse data
#iterate throught data to create latest news objects

class HackerNews::API

  #to refer to the entire class level method  of the api I used self.newslist
  def self.newslist
   #here I used rest client to open the API data
   hacker_news_data = RestClient.get('https://newsapi.org/v1/articles?source=hacker-news&sortBy=latest&apiKey=c41ac09c395a47a39b72a936ec604918')
   #calling JSON to parse the data
   @news_hash = JSON.parse(hacker_news_data)
   @news_hash["source"].each do |news|
   HackerNews::NEWSLIST.new_from_json(news)
  end
  #binding.pry
  end
