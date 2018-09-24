Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions
  resources :comments
  resources :comment_updates
  resources :guests
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
