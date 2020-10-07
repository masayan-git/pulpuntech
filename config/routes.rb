Rails.application.routes.draw do
  namespace :masters do
    resources :tops, only: [:index]
    resources :articles
  end
  
  
  root to: 'articles#index'
  resources :articles
  resources :members

  devise_for :masters, controllers: {
    sessions:        'masters/sessions',
    passwords:       'masters/passwords',
    registrations:   'masters/registations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
