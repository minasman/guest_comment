Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :comments
  resources :comment_updates
  resources :guests
  resources :stores
  resources :users
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
