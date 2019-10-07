Rails.application.routes.draw do
  resource :users, only: [:create, :destroy] do
    get :login
    get :logout
  end
  resources :confirmations, only: [:new, :create]
  resources :pages, only: [:index]

  root 'users#index'
end
