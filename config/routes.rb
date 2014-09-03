Rails.application.routes.draw do
  get 'photos/new'

  resources :users

end
