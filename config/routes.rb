Rails.application.routes.draw do

  get "/tips", to: "tips#index"
  get "/tips/new", to: "tips#new"
  post "/tips", to: "tips#create"
  get "/tips/:id", to: "tips#show"
  get "/tips/:id/edit", to: "tips#edit"
  patch "/tips/:id", to: "tips#update"
  delete "/tips/:id", to: "tips#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
