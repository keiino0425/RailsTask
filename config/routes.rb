Rails.application.routes.draw do

  resources :users
  get "users/profile/:id", to: "users#profile"
  get "users/account/:id", to: "users#account"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
