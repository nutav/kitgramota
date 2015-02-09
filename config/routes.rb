Rails.application.routes.draw do
  devise_for :admins
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'contacts', to: 'welcome#contacts'
  get 'myths', to: 'welcome#myths'
  get 'why_chinese', to: 'welcome#why_chinese'
  get 'why_chinese/self_perfection', to: 'welcome#self_perfection'
  get 'why_chinese/union_joining', to: 'welcome#union_joining'
  get 'why_chinese/up_to_date', to: 'welcome#up_to_date'
  get 'why_chinese/chinese_for_kids', to: 'welcome#chinese_for_kids'
  get 'why_chinese/chinese_for_success', to: 'welcome#chinese_for_success'
  get 'why_we', to: 'welcome#why_we'
  get 'partners', to: 'welcome#partners'
  get 'news', to: 'topics#news'
  get 'laoshi', to: 'teachers#laoshi'
  get 'news/:id', to: 'topics#show'
  get 'courses', to: 'education/levels#courses'
  get 'gallery', to: 'albums#gallery'

  resources :topics
  resources :admins
  resources :articles do
    get 'publications', on: :collection
  end
  resources :prices do
    get '/', to: 'prices#actual', on: :collection
    get '/all', to: 'prices#index', on: :collection
  end
  resources :teachers

  resources :albums do
    get 'gallery', to: 'albums#gallery', on: :collection
    resources :photos
  end

  resources :comments do
    get 'last', on: :collection
  end


  namespace :education do
    resources :levels 
    resources :types
    resources :claims
  end

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
