Rails.application.routes.draw do
  root 'sprints#index'
  resources :sprints
  #db.rake
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
