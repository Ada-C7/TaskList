Rails.application.routes.draw do
    # root route
    root 'tasks#index'

    # simple route
    get 'tasks/index'
    get 'tasks/completed'

    # dafault route
    # get ':controller(/:action)'



    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
