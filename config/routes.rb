Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :auth, only: :create
      resources :medical_items
      resources :medical_centers
      resources :doctors
    end
  end
end
