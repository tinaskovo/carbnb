Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars do
    resources :bookings, only: [ :new, :create, :destroy ]
  end

  get 'design', to: 'pages#design'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
