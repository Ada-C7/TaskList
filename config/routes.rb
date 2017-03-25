Rails.application.routes.draw do

  root 'tasks#index'

  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  get '/tasks', to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#task_done', as: "task_done"

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  put '/tasks/:id', to: 'tasks#update', as: 'update_task'

  #delete action
  delete 'tasks/:id', to: 'tasks#destroy', as: "delete_task"




end
