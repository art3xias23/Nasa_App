Rails.application.routes.draw do

  


  get '/nasaindex', to: 'nasa_picture#index'

  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help' 
  #/signup page is rooted the new action in users controller
  get  '/signup',  to: 'users#new'
  post 'signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  #Open Source
    get '/issdata', to: 'iss_map#index'

  resources :users
  resources :account_activations
  resources :password_resets,     only: [:new, :create, :edit, :update]
end