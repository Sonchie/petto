Rails.application.routes.draw do	
  devise_for :users
  resources :pets do
  resources :bookings
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

