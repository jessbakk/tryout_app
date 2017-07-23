Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
root 'players#index'

  resources :players
  
  resources :coaches, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy]

  
  get 'signup', to: 'coaches#new'

  get 'login', to: 'sessions#new'




end
