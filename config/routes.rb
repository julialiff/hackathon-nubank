Rails.application.routes.draw do
  get 'sessions/new'

  get 'login/consultant'

  get 'login/user'

  get 'static_page/home'

  resources :messages
  get 'sessions/new'
 root "static_page#home"
  resources :ads
  resources :consultants
  resources :users

  get    '/logini',   to: 'sessions#newi'
  post   '/logini',   to: 'sessions#createi'
  get   '/loginc',   to: 'sessions#newc'
  post   '/loginc',   to: 'sessions#createc' 
  delete '/logout',  to: 'sessions#destroy'
  get    '/signupi',   to: 'sessions#newi'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
