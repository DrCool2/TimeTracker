Rails.application.routes.draw do
  resources :lovs
  resources :tasks
  resources :users
  resources :entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
