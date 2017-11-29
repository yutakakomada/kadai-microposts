Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :likings
    end
  end

  resources :microposts, only: [:create, :destroy]
  # resources :microposts, only: [:create, :destroy] do
  #  member do
  #    get :likers
  #  end
  # end  
    
  resources :relationships, only: [:create, :destroy]
  resources :relationship2s, only: [:create, :destroy]
  
end


