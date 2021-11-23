Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :create, :show]
  patch 'bookings/:id/cancel', to: 'bookings#cancel'

  resources :bikes, only: [:index, :show]

  namespace :owner do
    resources :bikes, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :bookings, only: [:index]
    patch 'bookings/:id/accept', to: 'bookings#accept'
    patch 'bookings/:id/decline', to: 'bookings#decline'
  end
end
