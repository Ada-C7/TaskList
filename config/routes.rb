Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'tasks', to:'tasks#index'
#
# get 'tasks/new', to: 'tasks#new'
#
# get 'tasks/:id', to: 'tasks#show', as: 'task'
#
# post '/tasks', to: 'tasks#create'
#
# delete 'tasks/:id', to: 'tasks#destroy'
#
# get 'tasks/:id/edit', to: 'tasks#edit'

resources :tasks

patch 'tasks/:id/mark_complete', to: 'tasks#mark_complete'

post 'tasks/:id/mark_complete', to: 'tasks#mark_complete'
end
