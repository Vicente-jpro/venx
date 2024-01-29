Rails.application.routes.draw do
  resources :cart_temps
  resources :items do 
    collection do 
      get 'add_cart'
    end 
  end 
  resources :categories
  resources :sectors
  resources :suppliers
  resources :profiles
  resources :cities, only: [:province] do 
    member do 
      get 'province'
    end
  end

  devise_for :users, controllers: {registrations: "registrations"}

  devise_scope :user do
    post '/users/sign_out', to: 'devise/sessions#destroy'
  end

  
  root "home#index"
end
