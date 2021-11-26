Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :show] do
    member do
      get :cancel
    end
  end

  resources :bikes, only: [:index, :show, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
  end

  namespace :owner do
    resources :bikes, only: [:index]
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
