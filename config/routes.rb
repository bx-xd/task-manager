Rails.application.routes.draw do
  # Create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Read one task
  get 'tasks/:id', to: 'tasks#show'
end
