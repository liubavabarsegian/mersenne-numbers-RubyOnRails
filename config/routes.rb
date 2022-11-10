# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'

  get 'index' => 'articles#index'
  get 'result' => 'forms#result'
  get 'form' => 'forms#form'
  get 'forms/result'

end
