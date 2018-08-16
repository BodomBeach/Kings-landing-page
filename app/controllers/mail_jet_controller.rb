class MailJetController < ApplicationController

  def initialize
	end

  def perform(a)
	  email = { :from_email   => "hugopayetsync@gmail.com",
          :from_name    => "StrasTeam",
          :subject      => "Inscription confirmée et irrévocable",
          :text_part    => "Salut, t'es bien inscrit à notre newsletter, a+, plein de love",
          :recipients   => [{:email => a}] }

    test = Mailjet::Send.create(email)

    # retrieve the API response
    p test.attributes['Sent']
  end
end
