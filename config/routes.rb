Rails.application.routes.draw do

  post "api/v1/login", to: "api/v1/sessions#create"
  post "api/v1/signup", to: "api/v1/users#create"
  delete "api/v1/logout", to: "api/v1/sessions#destroy"
  get "api/v1/currentuser", to: "api/v1/sessions#get_current_user"

  get "api/v1/cookiecards", to: "api/v1/cards#index"
  get "api/v1/pantry", to: "api/v1/item#index"
  post "api/v1/pantry", to: "api/v1/item#create"
  delete "api/v1/pantry/:id", to: "api/v1/item#destroy"
  post "api/v1/cookiecards", to: "api/v1/cards#create"
  patch "api/v1/cookiecards/:id", to: "api/v1/cards#update"
  delete "api/v1/cookiecards/:id", to: "api/v1/cards#destroy"

end
