Rails.application.routes.draw do
  
  resources :bookings
  resources :activites
  resources :annonces
  resources :combis
  
  devise_for :users

  root 'home#index'
  
  as :user do
    # rewrite default url for users
    get '/users/:username/edit', to: 'devise/registrations#edit'
  end
  resources :users, :only =>[:show]
  
  get 'home/index'
  get 'pages/index', to: 'pages#index', as: 'inte'
  get 'pages/results'

  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get', as: 'profile'

  # Custom routes for ajax rating
  post 'rates' => 'rates#rate'
  get 'pages/combiList'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
