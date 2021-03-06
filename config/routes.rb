TDTWeb::Application.routes.draw do
  


  resources :users
  resources :sessions, only: [ :new, :create, :destroy]
  resources :teams
  resources :players, only: [ :show , :index ]
  resources :microposts, only: [:create, :destroy]
  resources :bids, only: [:create, :destroy]
  resources :news, only: [:index]
  resources :tournament, only: [ :show  ]
  resources :strikers, only: [ :index  ]
  
  root to: "static_pages#home"
  
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact',   to: 'static_pages#contact'
  
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/new_team',  to: 'teams#new'
  match '/players/:id/purchase',  to: 'players#purchase'
  match '/players/:id/sell',  to: 'players#sell'
  match '/teams/:id/plantilla',  to: 'teams#plantilla'
  match '/teams/:id/alignment',  to: 'teams#alignment'
  match '/teams/:id/updateAlignment',  to: 'teams#updateAlignment'
  match '/teams/:id/resetAlignment',  to: 'teams#resetAlignment'
  match '/teams/:id/negotiations',  to: 'teams#negotiations'
  match '/teams/:id/dorsals',  to: 'teams#dorsals'
  match '/teams/:id/updateDorsals',  to: 'teams#updateDorsals'
  
  match '/bids/:id/acept',  to: 'bids#acept'
  match '/bids/:id/refuse',  to: 'bids#refuse'
  match '/clashes', to: 'clashes#index'
  match 'teams/:id/strikers', to: 'teams#strikers'
  match 'strikers/byPlayer', to: 'strikers#byplayer'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
