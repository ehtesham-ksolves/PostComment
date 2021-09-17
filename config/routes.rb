Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :posts do
    resources :comments, only: [:create]
end
resources :likes, only: [:create, :destroy]
get '/register', to: 'users#new'
resources :users, only: [:create]

get '/sign_in', to: 'sessions#new'
get '/sign_out', to: 'sessions#destroy'
resource :sessions, only: [:create]
end
