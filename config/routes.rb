Rails.application.routes.draw do

  root 'home#index'
  
  resources :bookings  
  resources :activites
  resources :annonces
  resources :combis
  
  devise_for :users
  as :user do
    # rewrite default url for users
    get '/users/:username/edit', to: 'devise/registrations#edit'
  end
  resources :users, :only =>[:show]    
  
  get 'home/index'
  get 'pages/index', to: 'pages#index', as: 'inte'
  get 'pages/results'
  get 'pages/combiList'

  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get', as: 'profile'

  # Custom routes for ajax rating
  post 'rates' => 'rates#rate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
