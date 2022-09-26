Rails.application.routes.draw do
  resources :requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  get '/signup', to: 'users#new'
  post '/login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  
end
