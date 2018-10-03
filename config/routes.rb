Rails.application.routes.draw do

  post "assistants/:task_id/create" => "assistants#create"
  post "assistants/:task_id/destroy" => "assistants#destroy"

  get 'signup' => "users#new"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/index" => "users#index"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  get "users/:id" => "users#show"
  get "users/:id/assistants" => "users#assistants"

  get "tasks/:id/edit" => "tasks#edit"
  post "tasks/:id/update" => "tasks#update"
  get "tasks/index" => "tasks#index"
  get "tasks/up" => "tasks#up"
  post "tasks/create" => "tasks#create"
  get 'tasks/new' => "tasks#new"
  post "tasks/:id/offer" => "tasks#offer"
  post "tasks/:id/destroy" => "tasks#destroy"
  get "tasks/:id" => "tasks#show"


  get '/' => "home#top"

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
