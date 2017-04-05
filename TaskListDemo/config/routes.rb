Rails.application.routes.draw do
    # root route
    resources :tasks

    # simple route
    get 'tasks/index'

    # post 'tasks', to:'tasks#create'

    

    get 'tasks/new'
    post 'tasks' , to: "tasks#create"

    post 'tasks', to: 'taskss#destroy'

    # dafault route
    # get ':controller(/:action(/:id))'



    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
