Rails.application.routes.draw do
  resources :comments
  resources :post_details
  resources :posts
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
