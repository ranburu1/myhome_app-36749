Rails.application.routes.draw do
  root to: "plans#index"
  resources :houseworks
  resources :plans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
