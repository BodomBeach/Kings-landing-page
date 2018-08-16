class UserMailer < ApplicationMailer
  def send_mail(email)
    @user = User.find_by(email: email)
    mail(to: email, subject: "Apprendre à coder gratuitement")
  end
end
