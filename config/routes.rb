# config/routes.rb
Rails.application.routes.draw do
  resources :users
  get 'welcomes', to: 'welcomes#index'
end

Rails.application.routes.draw do
  resources :users
  resources :tasks
  root 'top#index'

  resource :login, only: %i[ new create ]
  resource :logout, only: %i[ show ]
  
  resources :welcomes, only: :index
end

Rails.application.routes.draw do
  resource :login, only: [:new, :create]
end