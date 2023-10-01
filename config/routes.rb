Rails.application.routes.draw do

  root to: "pages#home"
  get '/salut(/:name)', to:'pages#salut', as: 'salut'
  resources :posts
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
