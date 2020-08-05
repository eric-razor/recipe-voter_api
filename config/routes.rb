Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
      post "/login", to: "users/sessions#create"
      post "/signup", to: "users/registrations#create"
      delete "/logout", to: "users/sessions#destroy"
      get "/currentuser", to: "users/sessions#get_current_user"
  end

  get "/cookiecardz", to: "cookiecardz/cardz#index"
  post "/cookiecardz", to: "cookiecardz/cardz#create"

end
