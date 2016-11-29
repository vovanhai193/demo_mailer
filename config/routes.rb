Rails.application.routes.draw do
  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"
  resources :users
  root to: "users#index"
  resources :account_activations, only: [:edit]
end
