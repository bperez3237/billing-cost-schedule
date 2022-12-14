Rails.application.routes.draw do
  resources :cost_schedules
  resources :location_categories
  resources :costs
  resources :locations
  resources :subcontractors
  resources :activities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
