Rails.application.routes.draw do
  resources :activites
  resources :annonces
  resources :combis
  devise_for :users
  root 'home#index'
  
  get 'home/index'
  get 'pages/index', to: 'pages#index', as: "inte"
  get 'pages/results'

  post 'rates' => 'rates#rate'

  resources :combis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
