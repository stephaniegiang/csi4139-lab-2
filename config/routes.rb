Rails.application.routes.draw do
  resource :users, only: [:create, :destroy]

  root 'users#index'
end
