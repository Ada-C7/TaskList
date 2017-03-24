Rails.application.routes.draw do

  get "/tasks/new", to: "tasks#new", as: 'new_task'
  post "/tasks", to: "tasks#create"

  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: "task"
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "/tasks/:id", to: "tasks#completed", as: "completed_task"
  delete "/tasks/:id/", to: "tasks#destroy", as: "delete_task"
end
