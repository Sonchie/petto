Rails.application.routes.draw do
  get 'pets/index'
  get 'pets/create'
  get 'pets/new'
  get 'pets/edit'
  get 'pets/show'
  get 'pets/update'
  get 'pets/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
