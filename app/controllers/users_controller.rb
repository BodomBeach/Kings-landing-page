class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def thankyou
  end


  def create
    @user = User.create(user_params)
    if @user.save
      MailJetController.new.perform(@user.email)
      flash[:success] = "Inscription validée, un email de confirmation vous a été envoyé"
      redirect_to root_url
    else
      flash[:error] = "Tous les champs ne sont pas correctement renseignés"
      redirect_to '/thankyou'
    end
  end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
