Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index', as: 'welcome'

  get 'tasks', to: 'tasks#index', as: 'tasks' #The index always requires the controllers?????


  # get 'tasks/:id', to: 'tasks#show'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

end
