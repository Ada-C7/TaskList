Rails.application.routes.draw do
  get "/tasks", to: "tasks#index"

  get "/tasks/new", to: "tasks#new", as: "new_task"

  post "/tasks", to: "tasks#create"

  get "/tasks/:id", to: "tasks#show", as: "task"

  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  put "/tasks/:id", to: "tasks#update"
end
