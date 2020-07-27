Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
      post "/login", to: "users/sessions#create"
      post "/logout", to: "users/sessions#destroy"
      post "/signup", to: "users/registrations#create"
  end


  resources :users
  resources :tickers
  resources :notes
end
