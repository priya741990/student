Rails.application.routes.draw do
  resources :study_details
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"

  resources :students
end
