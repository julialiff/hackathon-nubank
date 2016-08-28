Rails.application.routes.draw do
  resources :cmessages
  resources :messages
  get 'sessions/new'

  resources :ads
  resources :consultants
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
