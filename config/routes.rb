RubyHwJdm::Application.routes.draw do
 
  devise_for :users
  resources :widgets

    root :to => "pages#index"
    match '/index',         :to=> 'pages#index'
    match '/stream',        :to => 'pages#stream'
    match '/help',          :to => 'pages#help'
    match '/login',         :to =>'users#login'
    match '/anmeldung',     :to=> 'users#signup'
    match '/show',          :to=> 'users#show'
    match '/about',         :to => 'pages#about'
    match '/dashboard',     :to => 'dashboards#index'
    match '/config',        :to => 'dashboards#konfiguration'
    match '/calendar',      :to => 'calendar#calendar'
    match '/new_date',      :to => 'calendar#new_date'





  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
