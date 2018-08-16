class TwitterBotStrasbourg

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


    strasbourg = ["unistra","strasbourg","EMStrasbourg","PokaaTeam","Laiterie","Insa_Strasbourg"]

    followers = []

          strasbourg.each do |user|
         		  rClient.followers(user).take(10).collect do |follower|
                    next if followers.include? follower.screen_name
    	             p "#{follower.screen_name} -- Strasbourg"
    	            #rClient.update("@#{tweet.user.screen_name}, tu veux apprendre à coder gratuitement à Strasbourg ? URL")
                  followers << follower.screen_name
                  sleep(2)
              end
             
          end
   p "========="
   p followers
   p "========="
  end
end