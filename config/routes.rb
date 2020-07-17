Rails.application.routes.draw do
  post "/login", to: "user_token#create"
  post "/sign-up", to: "users#create"
  get "/status", to: "status#index"
  get "/status/user", to: "status#user"
  resources :plants, :breeds
  resources :users, :except => [:create]
end
