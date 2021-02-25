Rails.application.routes.draw do
 
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shops, only: [:index, :show]

  resources :order_items


  root 'shops#index'
end
