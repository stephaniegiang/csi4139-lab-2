class UsersController < ApplicationController
  before_action :validate_password, only: :create
  def index; end

  def login; end

  def sign_up; end

  def create
    User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
  end

  private

  def validate_password
    return true if params[:password] == params[:password_confirmation]
    flash[:warning] = "Passwords do not match"
    redirect_to root_path
  end
end
