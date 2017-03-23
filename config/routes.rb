Rails.application.routes.draw do
  root 'welcome#index', as: 'welcome'
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new', as: 'task_new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
end
