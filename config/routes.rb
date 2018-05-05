Rails.application.routes.draw do
  resources :features
  resources :comments
  resources :comment_users
  resources :articles
end
