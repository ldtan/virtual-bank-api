Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions
      resources :media
      resources :medium_types
      resources :accounts
      resources :account_types
      resources :users
    end
  end
end
