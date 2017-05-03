Rails.application.routes.draw do
  devise_for :hackers
  resources :disclaimers
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'welcome/index', path: '/index'
  get 'welcome/about', path: '/about'
  get 'welcome/faq', path: '/faq'
  get 'welcome/gallery', path: '/gallery'
  get 'welcome/product', path: '/product'
  get 'welcome/admin', path: '/admin'
  
  resources :reviews
  # You can have the root of your site routed with "root"
  root :to => redirect('/index')
  
  # KEEP THIS LAST
  # Redirect to main page
  get '*path' => redirect('/index')
end
