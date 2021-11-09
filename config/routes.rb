Rails.application.routes.draw do
  # Create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # on va chercher l'instance à modifier, on donne un préfixe à la route
  patch 'tasks/:id', to: 'tasks#update' # on écrase les données de l'instance en DB

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
