Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index', as: 'welcome'

##
  get 'tasks', to: 'tasks#index', as: 'tasks' #The index always requires the controllers?????

  get 'tasks/new', to: 'tasks#new', as: 'new_task' #Important to have after index before show
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  patch 'tasks/:id/completed', to: 'tasks#task_completed', as: 'task_completed'
  delete 'tasks/:id', to: 'tasks#destroy'

end
