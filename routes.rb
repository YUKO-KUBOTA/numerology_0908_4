Rails.application.routes.draw do
  get 'numerologys/result' => "numerologys#result"
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :numerologys
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end