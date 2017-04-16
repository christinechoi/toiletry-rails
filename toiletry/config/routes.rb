Rails.application.routes.draw do
  get 'collection/index'

  get 'collection/new'

  get 'collection/create'

  get 'collection/show'

  get 'collection/edit'

  get 'collection/update'

  get 'collection/destroy'

  get 'brand/index'

  get 'brand/new'

  get 'brand/create'

  get 'brand/show'

  get 'brand/edit'

  get 'brand/update'

  get 'brand/destroy'

  get 'item/index'

  get 'item/new'

  get 'item/create'

  get 'item/show'

  get 'item/edit'

  get 'item/update'

  get 'item/destroy'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "home#index"

  
end
