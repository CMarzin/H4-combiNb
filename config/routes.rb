Rails.application.routes.draw do
  resources :bookings
  resources :activites
  resources :annonces
  resources :combis
  devise_for :users

  root 'home#index'
  
  get 'home/index'
  get 'pages/index'
  get 'pages/results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
