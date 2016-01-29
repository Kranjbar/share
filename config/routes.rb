Rails.application.routes.draw do

	get '/', to: 'splash#index'

  get 'users/index'

  get 'users/new'

  get 'users/edit'

  get "/login", to: "sessions#new"

end
