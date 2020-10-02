Rails.application.routes.draw do
  namespace :masters do
    resources :tops
    resources :articles
  end
  
  devise_for :masters
  root to: 'articles#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
