Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  get 'persons/profile', as: 'user_root'
end
