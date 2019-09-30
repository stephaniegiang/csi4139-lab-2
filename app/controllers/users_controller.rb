class UsersController < ApplicationController
  extend ConfirmationSender
  ATTRIBUTE_WHITELIST = [
    :first_name, 
    :last_name,
    :email,
    :phone_number,
    :password,
    :password_confirmation
  ]
  def index; end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      ConfirmationSender.send_confirmation_to(@user)
      redirect_to new_confirmation_path
    else 
      flash[:error] = "Passwords do not match. Please try again."
      redirect_to root_path
    end
  end

  private

  def user_params
    params.permit(*ATTRIBUTE_WHITELIST)
  end

end
