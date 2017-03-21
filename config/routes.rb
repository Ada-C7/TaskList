Rails.application.routes.draw do
  get '/tasks', to:'tasks#index', as:'tasks'
  get '/tasks/:id', to:'tasks#show', as:'task'
  get 'welcome', to:'welcome#index', as:'welcome'

end
