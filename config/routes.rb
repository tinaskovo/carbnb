Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :profiles
  resources :cars do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
  get 'design', to: 'pages#design'
  get "test", to: "profiles#test"
end
