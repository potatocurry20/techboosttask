Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  get 'pages/help'
  
  post 'comment/new'
  post 'comments', to: 'comment#create'
  
  resources :users
  resources :topics
  resources :comment
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get 'favorites/index'
  post 'favorites', to: 'favorites#create'
  delete 'favorites', to: 'favorites#destroy'
  
  
end
