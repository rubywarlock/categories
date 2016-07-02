Jobtest::Application.routes.draw do
  get 'searches/index'
  get 'searches/show'
  get 'searches/find'

  devise_for :users
  #mount Ckeditor::Engine => '/ckeditor'
  resources :childmenus, except: [:new]
  get '/childmenus/new/:id' => 'childmenus#new', as: :new_childmenu
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  #match "find", :to => "users#find", via: :get

  root "home_pages#index"
	match "/admin", :to => "home_pages#admin", via: :get

	resources :mainmenus, only: [:create, :edit, :update, :destroy]

  get 'mainmenus/new/(:id)' => 'mainmenus#new', as: :new_mainmenu
  get 'mainmenus/:id' => 'mainmenus#show', as: :show_mainmenu

  resources :contents, except: [:new]
	get '/contents/new/:id' => 'contents#new', as: :new_content

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
