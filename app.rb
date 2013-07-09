require 'sinatra'

require 'twitter'
require 'pry'

Twitter.configure do |config|
  config.consumer_key       = "8YYGUlTZlXaZWqX2XYhBzQ"
  config.consumer_secret    = "e1aqQNXrjl6nC0X7lXoe3K9AOMosSO99UvPbimSdaY"
  config.oauth_token        = "18060280-1i2QpSr6OJ1vbyGf9UrZ1S4hsnocHJpEndEU1xSOB"
  config.oauth_token_secret = "9WWj5g8Xv46ld6UEqBcrIwj8Q3Qf1gDjWcKPLfOA"
end

get '/' do
  @tweets = Twitter.user_timeline('simplonco')
  erb :tweets
end	

post '/' do
  
end
