Rails.application.routes.draw do
  # resources :cost_schedules, only: [:index, :show, :create, :update, :destroy]
  resources :location_categories, only: [:index, :show]
  # resources :costs, only: [:index, :show, :create, :update, :destroy]
  # resources :locations,  only: [:index, :show, :create, :update, :destroy]
  resources :subcontractors,  only: [:index, :show]
  # resources :activities,  only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
