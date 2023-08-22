Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # read all
  get 'tasks', to: 'tasks#index'

  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  #create
  get
end
