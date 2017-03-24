Rails.application.routes.draw do
  root 'welcome#index', as: 'welcome'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  # NEED comma after identifier 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  patch 'tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
  #ALL OF THE to: need to be set to TASKS with an 's' not TASK without. PROBLEMS
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
