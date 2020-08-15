Rails.application.routes.draw do

  post "api/v1/login", to: "api/v1/sessions#create"
  post "api/v1/signup", to: "api/v1/users#create"
  delete "api/v1/logout", to: "api/v1/sessions#destroy"
  get "api/v1/currentuser", to: "api/v1/sessions#get_current_user"

  get "/cookiecardz", to: "api/v1/cards#index"
  post "/cookiecardz", to: "api/v1/cards#create"


end
