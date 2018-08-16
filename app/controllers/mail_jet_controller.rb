

class MailJetController < ApplicationController

  def initialize
	end

  def perform(a)
	  email = { :from_email   => "hugopayetsync@gmail.com",
          :from_name    => "The Hacking Project",
          :subject      => "Apprendre à coder gratuitement ?",
          :text_part    => "Hey ! Tu veux apprendre la programmation web (HTML/CSS/JS/Ruby on Rails) gratuitement pendant 2 mois et demi ? Rends toi sur le site https://www.thehackingproject.org/ pour découvrir cette belle aventure ! La prochaine session commence bientôt alors n'hésite plus, embarque avec nous, la communauté t'accueillera à bras ouverts, tu ne le regretteras pas ! A bentôt futur moussaillon ;-)",
          :recipients   => [{:email => a}] }

    test = Mailjet::Send.create(email)

    # retrieve the API response
    p test.attributes['Sent']
  end
end
