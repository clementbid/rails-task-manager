Rails.application.routes.draw do
  get '/task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'

  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  get '/tasks', to: 'tasks#index'
  get '/task/:id', to: 'tasks#show', as: :task

  delete '/tasks', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
