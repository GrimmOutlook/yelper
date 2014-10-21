Rails.application.routes.draw do

  #resources :searches

  root :to => 'searches#new'

  get '/searches' => 'searches#search', as: :search

  # post '/searches' => 'searches#search'

end
