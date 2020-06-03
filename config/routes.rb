Rails.application.routes.draw do
  devise_for :users do
    resources :consultations, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  root to: 'pages#home'
  get "components", to: 'pages#components'
  
  resources :dashboard, only: [:index]

  resources :articles do
    resources :comments, only: [:new, :create]
  end
 end



