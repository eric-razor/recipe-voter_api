Rails.application.routes.draw do

  post "api/v1/login", to: "api/v1/sessions#create"
  post "api/v1/signup", to: "api/v1/users#create"
  delete "api/v1/logout", to: "api/v1/sessions#destroy"
  get "api/v1/currentuser", to: "api/v1/sessions#get_current_user"

  get "api/v1/categories", to: "api/v1/dish#index"
  get "api/v1/cookiecards", to: "api/v1/cards#index"
  post "api/v1/cookiecards", to: "api/v1/cards#create"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :dishes do
        resources :cards
      end
      resources :cards
    end
  end

end
