Rails.application.routes.draw do

  root 'welcome#index', as: 'welcome'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  post 'tasks/:id/complete', to: 'tasks#mark_complete', as: 'mark_complete'
  post 'tasks/:id/incomplete', to: 'tasks#mark_incomplete', as: 'mark_incomplete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
