Rails.application.routes.draw do
  resource :users, only: [:create, :destroy]
  resources :confirmations, only: [:new, :create]

  root 'users#index'
end
