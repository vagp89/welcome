Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # nested reviews through consultations
  resources :consultations, except: [:destroy] do
      resources :reviews, only: [:new, :create]
  end

  resources :articles do
    resources :reviews, only: [:new, :create]
  end
 end

