module HackerNews
  # Your code goes here...
end

#Here we require rest-client, and json as I did in the irb test earlier.
require 'rest-client'
require 'json'
require 'pry'

require_relative "./hackernews/version"
require_relative "./hackernews/api"
require_relative "./hackernews/cli"
require_relative "./hackernews/newslist"
