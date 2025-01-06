Rails.application.routes.draw do
  root "register#index"
  get "create_user", to: "register#new", as: :create_user
  post "create", to: "register#create", as: :create
  get "user/:id", to: "register#user", as: :user
  put "edit/:id", to: "register#edit", as: :edit
end
