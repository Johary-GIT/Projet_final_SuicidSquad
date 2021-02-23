Rails.application.routes.draw do
 

  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  resources :shops, only: [:index, :show]
  resources :order_items
  devise_for :users
   
 root to: "shops#index"
  
end
