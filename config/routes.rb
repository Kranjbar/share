Rails.application.routes.draw do

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
  get "/categories", to: "categories#index", as: "categories"
  get "/categories/:id", to: "categories#show", as: "category"

  #Routes for add skills
  get "/skills", to: "user_skills#index", as: "display_skills"
  post "/skills/:skill_id/users", to: "user_skills#create", as: "add_skills"
  delete "/user_skills/:id", to: "user_skills#destroy", as: "user_skills"

  #Routes for reviews
  post "/users/:id/reviews", to: "reviews#create", as: "create_user" 
  

  #Routes for login form, logging in and logging out
  get "/login", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "destroy_session"
end
