Rails.application.routes.draw do
  resources :entries
  resources :users
  resources :accounts
  resources :gendescs
  resources :items
  resources :units
  resources :transactions
  resources :entities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
