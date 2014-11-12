Rails.application.routes.draw do
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/show'

  resources :restaurants, only: [:index, :new, :create, :show]
  resources :reviews, only: [:create]
end