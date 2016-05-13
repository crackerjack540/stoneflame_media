<<<<<<< HEAD
Rails.application.routes.draw do



  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/index'
  get 'messages/new'
 
  resources :buckets
=======
Rails.application.routes.draw do



  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/index'
  get 'messages/new'
 
  resources :buckets
>>>>>>> f27fccdf524fb7b795100c7668d0261f64d7eb7c
end