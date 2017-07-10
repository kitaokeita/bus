Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  get 'users/show'

  resources :books do
    resources :reservations
  end

  get 'books/:id/reservations/:id/address' => 'reservations#address', as:'reservations_address'

   get '/reservations' => 'reservations#index' 
   get '/reserved' => 'reservations#reserved'
  get '/reservations' => 'reservations#show' 




  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users, :only => [:index, :show]
  resources :users do
    member do
     get :following, :followers
    end
  end
  
  resources :relationships,       only: [:create, :destroy]







  root 'pages#index'

  get 'pages/show'

  get 'nav/rere'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
