Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/signup", to: "user#create"
  get "/me", to: "user#show"
  get "/recipes", to: "recipes#index"
  post "/recipes", to: "recipes#create"
end
