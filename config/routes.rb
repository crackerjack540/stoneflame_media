Rails.application.routes.draw do

  root 'mainpages#home'
  get  'mainpages/podcast'

end
