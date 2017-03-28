Rails.application.routes.draw do

  # put routes that act on a collection first
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # routes that create or edit go in middle
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  post 'tasks', to: 'tasks#create'

  # routes that act on one instance go here
  # the as task is a little bit of "rails magic" that sets up routes to each individual task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'tasks/:id', to: 'tasks#update'
  patch 'tasks/:id/completed', to: 'tasks#completed', as: 'completed_task'

  # trying to create destory/delete path
  delete 'tasks/:id', to: 'tasks#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
