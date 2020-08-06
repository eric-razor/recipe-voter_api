Rails.application.routes.draw do

  post "/login", to: "users/sessions#create"
  post "/signup", to: "users/registrations#create"
  delete "/logout", to: "users/sessions#destroy"
  get "/currentuser", to: "users/sessions#get_current_user"

end
