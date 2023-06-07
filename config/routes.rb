Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing_page"
  get "/dashboard", to: "pages#dashboard"

  resources :events do
    resources :bookings, only: :create
    # Chatroom
    resources :chatroom do
      resources :messages
    end
  end
  resources :groups do
    resources :user_groups, only: :create
    resources :posts, except: :destroy
  end
  delete "bookings/:id", to: "bookings#destroy", as: 'delete_booking'
  delete "user_groups/:id", to: "user_groups#destroy", as: 'delete_user_group'
  # delete "/groups/:group_id/posts/:id", to: "posts#destroy", as: "delete_post"
  resources :posts, only: :destroy
end
