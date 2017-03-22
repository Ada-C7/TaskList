Rails.application.routes.draw do
    # simple route
    # get 'tasks/index'

    # dafault route
    # get ':controller(/:action)'

    # root route
    root 'tasks#index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
