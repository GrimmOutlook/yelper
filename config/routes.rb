Rails.application.routes.draw do

  resources :searches

  root :to => 'searches#new'

  # get '/searches' => 'searches#search'

  # post '/searches' => 'searches#index'

end
