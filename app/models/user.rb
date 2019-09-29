class User < ApplicationRecord
  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number]
    )
  end

  def destroy
  end
end
