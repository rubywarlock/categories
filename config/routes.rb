Jobtest::Application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  resources :childmenus
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  match "find", :to => "users#find", via: :get

  #get "home_pages/admin"
	#root "home_pages#index"
  root "home_pages#index"
	match "/admin", :to => "home_pages#admin", via: :get

	resources :mainmenus, only: [:create, :edit, :update, :destroy]

  match 'mainmenus/new/(:id)', to: 'mainmenus#new', as: :new_mainmenu, via: :get
  match 'mainmenus/:id', to: 'mainmenus#show', as: :show_mainmenu, via: :get

  resources :contents

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
