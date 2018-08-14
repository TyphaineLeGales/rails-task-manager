Rails.application.routes.draw do
  #create
  get "/tasks/new", to: "tasks#new"
  post "/tasks/create", to:"tasks#create"
  #read
  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: :task

end
