Rails.application.routes.draw do
  get 'tasks/index'

  # this create a rout to view
  get 'tasks', to: 'tasks#index'

  # the as task is a little bit of "rails magic" that sets up routes to each individual task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
