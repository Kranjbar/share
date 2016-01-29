Rails.application.routes.draw do

  root to: 'splash#index'

  get 'users/index'
  get '/signup', to: 'users#new', as: 'new_user'
  get 'users/edit'
  get '/users/:id', to: 'user#show', as: 'user_path'


  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy', as: 'destroy_session_path' 
end
