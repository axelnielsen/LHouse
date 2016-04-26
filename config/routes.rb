Rails.application.routes.draw do
  resources :subsubaccounts

  resources :subaccounts

  resources :subpayableaccounts
  
  resources :communities do
  collection { post :import }
  end

  resources :services

  resources :configsystems

  resources :configurations

  resources :newsbooks

  resources :journalouts

  resources :journalins

  resources :tasks

  resources :comments do
    resources :comments
  end

  resources :tests

  resources :tasts

  resources :startscreens

  resources :charts

  resources :paymentmethods

  resources :pamenttypes

  resources :journals

  resources :receivableaccounts

  resources :payableaccounts

  resources :vendors do
  collection { post :import }
  end

  resources :bankaccounts do
  collection { post :import }
  end

  resources :messages

  resources :apartments

  resources :reservations

  resources :common_rooms

  resources :communities

  resources :statuses do
    resources :comments
  end

  resources :status_types

  #devise_for :users
  resources :profiles

  devise_for :users, controllers: { registrations: 'users/registrations' } 

  root to: 'startscreens#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
