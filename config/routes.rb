Rails.application.routes.draw do
  get 'tasks/new'

  get 'task/edit'

  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'easter_egg' => 'static_pages#easter_egg'
  post 'easter_egg' => 'static_pages#easter_egg'

  get 'click_me' => 'static_pages#click_me'

  resources :projects do
<<<<<<< HEAD
    resources :tasks, except: [:show, :index]
    put 'task/:id', to: 'tasks#toggle', as: :toggle
=======
    resources :tasks, except: [:show, :index] do
      patch 'complete_task' => 'tasks#mark_completed'
      patch 'uncomplete_task' => 'tasks#mark_not_completed'
    end
>>>>>>> 1e6aa68c4b14d961e5afb5dfa863f1eea85c2429
  end


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
