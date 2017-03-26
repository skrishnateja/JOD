Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "sessions#new"
  post "/auth/:provider/callback", to: "sessions#create"
  post "/auth/failure", to: "sessions#failure"
  get "/logout", to: "sessions#destroy", :as => "logout"
  resources :identities
end
