class TwitterBotGlobal

  def initialize  
     # Dotenv.load

    @config = {
      consumer_key:        ENV["TWITTER_API_KEY"],
      consumer_secret:     ENV["TWITTER_API_SECRET"],
      access_token:        ENV["TWITTER_TOKEN"],
      access_token_secret: ENV["TWITTER_TOKEN_PRIVATE"]
          }

  end

  def perform
    rClient = Twitter::REST::Client.new(@config)
    sClient = Twitter::Streaming::Client.new(@config)


    global = ["Entrepreneur","AFEcreation","BoostElles","pole_emploi","challengehebdo","ScienceFutura"]
     followers = []

          global.each do |user|
              rClient.followers(user).take(10).collect do |follower|
                    next if followers.include? follower.screen_name
                   p "#{follower.screen_name} -- Dev"
                  #rClient.update("@#{tweet.user.screen_name}, tu veux apprendre à coder gratuitement et en équipe dans ta ville ? URL")
                  followers << follower.screen_name
                  sleep(5)
              end
             
          end
   p "========="
   p followers
   p "========="
  end
end