Rails.application.routes.draw do
  # root 'tasks#index', as: 'tasks'
  # this create a rout to view

  # put routes that act on a collection first
  get 'tasks', to: 'tasks#index'

  # routes that create or edit go in middle
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # routes that act on one instance go here
  # the as task is a little bit of "rails magic" that sets up routes to each individual task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
