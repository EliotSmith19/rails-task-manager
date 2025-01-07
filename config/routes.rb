Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get 'tasks', to: 'task#index'
  get 'tasks/create', to: 'task#create'
  get 'tasks/:id', to: 'task#show', as: :task
  post 'tasks', to: 'task#new'
  get 'tasks/:id/edit', to: 'task#edit', as: :edit_task
  patch 'tasks/:id', to: 'task#update'
  delete 'tasks/:id', to: 'task#destroy'

end
