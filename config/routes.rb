Rails.application.routes.draw do
  resources :featured_articles
  resources :comments
  resources :comment_users
  resources :articles
end
