desc "This task is called by the Heroku scheduler add-on"
task :bot_twitter_global => :environment do
	TwitterBotGlobal.new.perform
  puts "done."
end

task :bot_twitter_strasbourg => :environment do
	TwitterBotStrasbourg.new.perform
  puts "done."
end

task :bot_twitter_dev => :environment do
	TwitterBotDev.new.perform
  puts "done."
end

# require 'date'
# task :mailer => :environment do
#   if Date.today.wday.zero?
#   MailJetController.new.perform(@user.email)
# end

# task :send_reminders => :environment do
#   User.send_reminders
# end
