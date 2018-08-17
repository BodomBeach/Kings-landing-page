class TwitterBotDev

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


    tech_site = ["OCFrance","OpenClassRooms","grafikart_fr","DevJobFrance","CréatifWebDesign","railsfrance",]
     followers = []

          tech_site.each do |user|
              rClient.followers(user).take(3).collect do |follower|
                    next if followers.include? follower.screen_name
                   p "#{follower.screen_name} -- Dev -- #{user}"
                  rClient.update("@#{tweet.user.screen_name}, tu veux apprendre Ryby on Rails gratuitement ? https://king-landing-pages-thp.herokuapp.com/index2")
                  followers << follower.screen_name
                  sleep(3)
              end
             
          end
   p "========="
   p followers
   p "========="
  end
end

