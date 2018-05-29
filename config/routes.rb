Rails.application.routes.draw do
  resources :comments
  resources :packages
  resources :reviews
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
