class ConfirmationsController < ApplicationController
  def new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(session[:user_id])

    response = Authy::API.verify(:id => @user.authy_id, :token => params[:token])

    if response.ok?
      session[:authenticated] = true
      flash[:notice] = "Welcome #{@user.first_name}. The Adventure Begins!"
      redirect_to secrets_path
    else
      flash[:error] = "Verification code is incorrect."
      render :new
    end
  end
end