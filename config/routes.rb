Rails.application.routes.draw do

  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'topics/new'
  get 'topics/list'
 

  resources :new_topic
end
