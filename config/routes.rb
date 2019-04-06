Rails.application.routes.draw do
  resources :reserveds
  resources :contacts
  resources :bookdetails
  resources :packages
  resources :users
  root 'page#index'
  get 'tentang-kami', to: 'page#index'
  get 'tour-package', to: 'packages#index'
  get 'contact-us', to: 'contact#index'

  
end

