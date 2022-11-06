Rails.application.routes.draw do
  

  root "articles#index"
  #get "/forms", to: "forms#form"

  get 'index' => 'articles#index'
  get 'result' => 'results#result'
  get 'form' => 'forms#form'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
