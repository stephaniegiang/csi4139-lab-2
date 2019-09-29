Rails.application.routes.draw do
  get 'users/index'
  get 'users/login'
  get 'users/sign_up'
  get 'authenticate/index'

  root 'users#index'
end
