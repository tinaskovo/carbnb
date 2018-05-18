Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars
  resources :bookings
  resources :profiles
  get 'design', to: 'pages#design'
  get "test", to: "profiles#test"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
