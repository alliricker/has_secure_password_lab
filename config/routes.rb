Rails.application.routes.draw do

  root 'application#homepage'
  resources :users 

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/new', to: 'sessions#new'
  post '/users/new', to: 'sessions#create'

end
