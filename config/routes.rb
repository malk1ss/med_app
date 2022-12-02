Rails.application.routes.draw do
  root 'persons#profile'
  get 'persons/profile', as: 'user_root'
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'persons/profile'

  # get 'appoinments#show'

  # resources :doctors do
  #   resources :appoinments
  # end
  end