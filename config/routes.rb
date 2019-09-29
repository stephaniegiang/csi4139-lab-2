Rails.application.routes.draw do
  get 'authenticate/index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root 'authenticate#index'
end
