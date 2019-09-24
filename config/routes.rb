Rails.application.routes.draw do
  get 'authenticate/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'authenticate#index'
end
