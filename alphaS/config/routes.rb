Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#show"
  get "/articles", to: "articles#show" 
  get "/articles/1", to: "articles#article1" 
  get "/articles/2", to: "articles#article2" 
  
  # post "/articles/new", to: "articles#new" 
  #  get "/articles/new", to: "articles#new" 

  get "/articles/create", to: "articles#create"  
   resources :articles
end
