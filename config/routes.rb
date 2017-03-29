Rails.application.routes.draw do

  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  post '/tasks', to: 'tasks#create'

  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'update_task'

  put '/tasks/:id', to:'tasks#update'

  get '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'

  delete '/tasks/:id/delete', to: 'tasks#delete'

end
