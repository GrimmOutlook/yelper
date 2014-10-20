Rails.application.routes.draw do

resources :searches
  root :to => 'searches#new'

  post 'searches/new'

  # get 'searches/index'

end
