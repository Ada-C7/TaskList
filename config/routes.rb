Rails.application.routes.draw do
  root 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  put '/tasks/:id', to: 'tasks#update', as: 'update_task'
  patch '/tasks/:id', to: 'tasks#complete', as: 'complete_task'

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
end
# changed order of routes 3.31.17
