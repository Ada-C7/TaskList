Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  put '/tasks/:id', to: 'tasks#update'

  match '/tasks/complete/:id', to: 'tasks#complete', as: 'complete_task', via: :put

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
end
