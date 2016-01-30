Rails.application.routes.draw do

  get 'categories/index'

  get 'categories/show'

  root to: 'splash#index'
  get '/about', to: 'splash#show', as: 'about'

  #Routes for CRUD for Users
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create", as: "create_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  #Routes for categories
  get "/categories", to: "category#index", as: "categories"
  get "/categories/:id", to: "category#show", as: "category"

  

#Routes for login form, logging in and logging out
  get "/login", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "destroy_session"
end
