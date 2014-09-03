Rails.application.routes.draw do

  resources :users, :photos

  root :to => 'application#index'

end
