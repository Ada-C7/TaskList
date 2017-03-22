Rails.application.routes.draw do
  root 'welcome#index'

  # match ':controller/:action/:id', via: [:get]

  get 'welcome/index'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # get 'tasks/:id/:name', to: 'tasks#show', as: 'task_2'

end
