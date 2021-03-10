Rails.application.routes.draw do
 
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'cards/show'
  get 'shops', to: 'shops#index'
  get 'infos', to: 'infos#index'
  resources :products
  resources :shops, only: [:index, :show] 
  resources :order_items
  resource :cards, only: [:show]
  resources :charges

  
  root to: "home#index"
end
