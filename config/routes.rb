Rails.application.routes.draw do
 
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'cards/show'
  resources :products
  resources :shops, only: [:index, :show] 
  resources :order_items
  resource :cards, only: [:show]


  root 'shops#index'
end
