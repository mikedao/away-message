Rails.application.routes.draw do
  root to: "home#index"
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get 'dashboard', to: 'dashboard#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/:username', to: 'aways#show'
end
