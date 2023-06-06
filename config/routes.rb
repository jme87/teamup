Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#home"
  resources :events do
    resources :bookings, only: %i[create delete]
  end
  resources :groups do
    resources :user_groups, only: %i[create delete]
  end
end
