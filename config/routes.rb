Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :mentors
  resources :consultations, only: [:new, :create, :edit, :update, :show]

  resources :consultations, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :dashboard, only: [:index]

  resources :articles do
    resources :comments, only: [:new, :create]
  end
end



