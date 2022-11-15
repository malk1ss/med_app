Rails.application.routes.draw do
  root 'persons#profile'
  get 'persons/profile', as: 'user_root'
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'persons/profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
