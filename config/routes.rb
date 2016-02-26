Rails.application.routes.draw do

  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/list'
  get 'messages/new'
 
  resources :messages
  resources :buckets
end
