Rails.application.routes.draw do
  get 'welcome', to:'welcome#index', as:'welcome'


  get '/tasks', to:'tasks#index', as:'tasks'
  post 'tasks', to:'tasks#create'
  get 'tasks/new', to:'tasks#new', as:'new_task'



  get 'tasks/:id/edit', to:'tasks#edit', as: 'edit'
  patch '/tasks/:id', to:'tasks#complete'
  patch '/tasks/:id', to:'tasks#update'
  get '/tasks/:id', to:'tasks#show', as:'task'
  delete '/tasks/:id', to:'tasks#destroy'



end
