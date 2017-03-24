Rails.application.routes.draw do
  root "tasks#index"
  get "/tasks", to: "tasks#index", as: "tasks"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create"

  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: "tasks_id"

  get "/tasks/:id/edit", to: "tasks#edit", as: 'edit_task'
  put "/tasks/:id", to: "tasks#update", as: "task_update"

  patch "/tasks/:id", to: "tasks#complete", as: "complete_task"
  post "tasks/:id", to: "tasks#complete"


  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task"

end
