Rails.application.routes.draw do
  
  resources :collections, :brands, :items
  

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "home#index"

  
end
