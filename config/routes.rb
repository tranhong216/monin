Rails.application.routes.draw do
  root "expenses#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  resources :users
  resources :expenses, controller: :expenses, only: %i(index new create)
  resources :results, controller: :results
end
