Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :comments
  resources :packages
  resources :reviews
  resources :profiles
  resources :users, controller: :users, only: :create
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
