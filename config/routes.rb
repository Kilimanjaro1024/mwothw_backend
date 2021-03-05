Rails.application.routes.draw do
  resources :liked_posts
  resources :posts
  resources :users, only: [:create, :index]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/profile/posts", to: "posts#user_posts"
  get "/profile/liked", to: "liked_posts#liked_posts"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
