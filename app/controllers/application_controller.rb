class ApplicationController < ActionController::Base
  def check_if_logged_in
    if session[:user_id] 
      true
    else
      false
    end
  end
end
