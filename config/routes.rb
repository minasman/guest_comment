Rails.application.routes.draw do
  resources :sessions
  resources :comment_updates
  resources :guests
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
