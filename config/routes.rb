Rails.application.routes.draw do
  get 'employees/index'
  get 'employees/show'
  post 'employees/edit'
  post 'employees/new'
  put 'employees/update'
  get 'employees/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :employees
  # Defines the root path route ("/")
  # root "articles#index"
end
