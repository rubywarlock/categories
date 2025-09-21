Jobtest::Application.routes.draw do
  get 'searches/index'
  get 'searches/show'
  get 'searches/find'

  devise_for :users

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  # match "find", :to => "users#find", via: :get

  # mount Ckeditor::Engine => '/ckeditor'
  resources :childmenus, except: [:new]
  get '/childmenus/new/:id' => 'childmenus#new', as: :new_childmenu

  root "home_pages#index"
  match "/admin", :to => "home_pages#admin", via: :get

  resources :mainmenus, only: [:create, :edit, :update, :destroy]

  get 'mainmenus/new/(:id)' => 'mainmenus#new', as: :new_mainmenu
  get 'mainmenus/:id' => 'mainmenus#show', as: :show_mainmenu

  resources :contents, except: [:new]
  get '/contents/new/:id' => 'contents#new', as: :new_content
end
