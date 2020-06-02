Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :users do
    resources :consultations, only: [:new, :create, :edit, :update, :show]
  end
    resources :consultations, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :dashboard, only: [:index]
end



