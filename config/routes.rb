Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  resources :users do
    member do
      get :followings
      get :followers
      get :like_products
    end
  end

  resources :products, only: %i[index show new create edit update destroy]
  resources :posts, only: %i[new create destroy show edit update index]
  resources :likes, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
  resources :brands, only: %i[index show new create edit update destroy]

end
