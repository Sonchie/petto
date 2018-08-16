Rails.application.routes.draw do
  devise_for :users
  resources :pets do
  	resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :update, :show, :index, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

