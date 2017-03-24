Rails.application.routes.draw do
  root 'welcome#index'

  # match ':controller/:action/:id', via: [:get]

  get 'welcome/index'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to:'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  patch 'tasks/:id/done', to: 'tasks#done', as: 'done_task'
  patch 'tasks/:id/date', to: 'tasks#completed_date', as: "date_task"


end
