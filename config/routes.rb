Rails.application.routes.draw do
  resources :reserveds
  resources :contacts
  resources :packages

  root 'page#index'
  get 'tentang-kami', to: 'page#index'
  get 'tour-package', to: 'packages#index'
  get 'contact', to: 'contacts#index'
  get 'Reserve', to: 'reserve#new'
  
end

