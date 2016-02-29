Rails.application.routes.draw do

  devise_for :users
  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/index'
  get 'messages/new'
 
  resources :messages do
    resources :comments
  resources :buckets
  resources :users
end
end