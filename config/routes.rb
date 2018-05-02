Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :articles
end
