Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :consultations, only: [:destroy, :new, :create, :edit, :update, :show] do
    resources :reviews, only: [:new, :create]
  end

  resources :dashboard, only: [:index]

  resources :articles do
    resources :comments, only: [:new, :create]
  end
end



