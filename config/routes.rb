Rails.application.routes.draw do
  get 'articles/index'
  root 'articles#index'
  resources :articles, only: %i[index]
end
