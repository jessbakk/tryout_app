Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
# root 'players#index'

root 'pages#show', page: 'welcome'

resources :coaches, only: [:new, :create]
  
resources :players, shallow: true do 
    resources :comments
  end
  
  
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'signup', to: 'coaches#new'

  get 'login', to: 'sessions#new'

  get 'comment', to: 'comments#new'

  get 'home', to: 'sessions#show'

  get 'pages/dashboard'

end
