Rails.application.routes.draw do
  root "static_pages#home"

  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "products/index"
  get "products/show"

  resources :users, except: %i(index destroy)
  resources :products, only: %i(index show)
  
  namespace :admin do
    resources :users, only: %i(index destroy)
    resources :products
  end
end
