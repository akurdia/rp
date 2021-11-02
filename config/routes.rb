Rails.application.routes.draw do
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
    
    

  resources :movies
  root :to => redirect('/movies')
    
  #get  'auth/:provider/callback' => 'sessions#create'
 # get  'auth/failure' => 'sessions#failure'
 # get  'auth/google', :as => 'login'
  #post 'logout' => 'sessions#destroy'
 
  
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'
    get 'login', to: 'sessions#new', as: 'login'
    
    # Added these for cucumber testing
    # sessions#create_guest makes a fake user for Cucumber testing with hard coded data 
    # so that session[:logged_in] is true
 #   get 'auth/guest', to: 'sessions#create_guest'
    # sessions#loggedin checks that the user is logged in and outputs session[:logged_in] to log folder
    # Since it is used by Cucumber, the output is put into the bottom of log/test.log
 #   get 'auth/loggedin', to: 'sessions#loggedin'

  #  resources :sessions, only: [:new, :create, :destroy]
   # get '/login', to: 'sessions#login'  
    
 
  resource :home, only: [:index]
 
end
