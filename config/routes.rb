Rails.application.routes.draw do
  resource :users, only: [:create, :destroy] do
    get :successful_creation
  end

  root 'users#index'
end
