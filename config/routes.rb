Rails.application.routes.draw do
  root to: 'tasks#index'
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  get "/tasks/:id", to: "tasks#show", as: "task"
  get "/tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch "/tasks/:id", to: "tasks#update"
  delete "/tasks/:id", to: "tasks#destroy", as: "task_delete"
  # put 'complete_task', to: 'tasks#complete', as: :complete_tasks  
end
