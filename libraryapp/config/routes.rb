Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'session#index'

  resources :admin
    post '/dashboard/admin_login' => 'dashboard#admin_login'
    get '/dashboard/admin_logout' => 'dashboard#admin_logout'
    get '/dashboard/admin_view/:book_id' => 'dashboard#admin_book_view', :as => 'admin_book_view'
    patch '/dashboard/admin_update/:book_id' => 'dashboard#admin_book_update', :as => 'admin_book_update'
    get '/dashboard/admin_add_book' => 'dashboard#admin#admin_add_book', :as => 'admin_add_book'
    post 'dashboard/create' => 'dashboard#create', :as => 'create_book'
    




  resources :user
  #sessions routes
  post '/session/login' => 'session#login'
  get '/session/logout' => 'session#logout', :as => 'logout'

 

  resources :checkout
  post '/checkout/new_checkout' => 'checkout#new_checkout'

 resources :books
 resources :checkin


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
