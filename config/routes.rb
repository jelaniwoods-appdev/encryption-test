Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Audits1984::Engine => "/console"
  # Defines the root path route ("/")
  root "application#index"
end
