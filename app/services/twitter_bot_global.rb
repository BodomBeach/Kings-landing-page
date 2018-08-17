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
    exp1 = ["", "Salut "]
    exp2 = ["tu veux","ça te dit d'"]
    exp3 = ["coder","faire des app webs"]
    exp4 = ["","gratuitement","pour 0€","dans ta ville"]
    exp5 = ["", "en groupe"]
     followers = []

          global.each do |user|
              rClient.followers(user).take(3).collect do |follower|
                    next if followers.include? follower.screen_name
                   p "#{follower.screen_name} -- Global -- #{user}"
                  rClient.update("#{exp1.sample}@#{follower.screen_name}, #{exp2.sample} apprendre à #{exp3.sample} #{exp4.sample} #{exp5.sample} ? https://king-landing-pages-thp.herokuapp.com/")

                  followers << follower.screen_name
                  sleep(15)
              end
             
          end
   p "========="
   p followers
   p "========="
  end
end

