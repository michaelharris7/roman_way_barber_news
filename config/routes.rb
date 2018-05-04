Rails.application.routes.draw do
  resources :comments
  resources :comment_users
  resources :articles
end
