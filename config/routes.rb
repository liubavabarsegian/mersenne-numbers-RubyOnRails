Rails.application.routes.draw do
  root 'articles#index'

  get 'index' => 'articles#index'
  get 'result' => 'forms#result'
  #get 'results/result'
  get 'form' => 'forms#form'
  get 'forms/result'
  # get 'forms/form'
  # get 'forms/result'
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
