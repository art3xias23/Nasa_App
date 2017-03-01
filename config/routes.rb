Rails.application.routes.draw do

  
  get '/nasaindex', to: 'NasaPicture#index'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  #/signup page is rooted the new action in users controller
  get  '/signup',  to: 'users#new'
  post 'signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations
  resources :password_resets,     only: [:new, :create, :edit, :update]
end