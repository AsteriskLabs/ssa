Ssa::Application.routes.draw do
  #devise_for :users

  # I honestly don't know why I need this next line, considering I'm skipping the rest?
  devise_for :users, :skip => [:sessions,:registrations,:passwords,:confirmations]
  
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'jsonsession#create', :as => :user_session
    delete '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session

    get '/sign_up' => 'devise/registrations#new', :as => :new_user_registration
    post '/sign_up' => 'jsonuser#create', :as => :user_registration
    put '/sign_up' => 'devise/registrations#update'
    get '/sign_up/edit' => 'devise/registrations#edit', :as => :edit_user_registration
    get '/sign_up/cancel' => 'devise/registrations#cancel', :as => :cancel_user_registration
    delete '/sign_up' => 'devise/registrations#destroy'

    get '/password/new' => 'devise/passwords#new', :as => :new_user_password
    post '/password' => 'jsonpassword#create', :as => :user_password
    get '/password/edit' => 'devise/passwords#edit', :as => :edit_user_password
    post '/password/edit' => 'devise/passwords#update', :as => :edit_user_password_submit

    get '/confirm/new' => 'devise/confirmations#new', :as => :new_user_confirmation
    post '/confirm' => 'jsonconfirmation#create', :as => :user_confirmation
    get '/confirm' => 'devise/confirmations#show'
  end

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
