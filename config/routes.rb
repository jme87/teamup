Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"

  resources :events do
    resources :bookings, only: :create
  end
  resources :groups do
    resources :user_groups, only: :create
  end
  delete "bookings/:id", to: "bookings#destroy", as: 'delete_booking'
  delete "user_groups/:id", to: "user_groups#destroy", as: 'delete_user_group'
end
