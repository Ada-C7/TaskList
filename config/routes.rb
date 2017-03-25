Rails.application.routes.draw do
  root "tasks#index"

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  patch 'tasks/:id/complete', to: 'tasks#complete_task', as: 'complete_task'


  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'


  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
