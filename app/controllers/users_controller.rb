class UsersController < ApplicationController

  def thankyou
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      UserMailer.send_mail(@user.email).deliver_now
      flash[:success] = "Inscription validée, un email de confirmation vous a été envoyé"
      redirect_to 'users/new'
    else
      flash[:error] = "Tous les champs ne sont pas correctement renseignés"
      render 'new'
    end
  end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
      end
end
