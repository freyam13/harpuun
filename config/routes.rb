Hook::Application.routes.draw do
  
  root :to => 'static#home'
  # map.resources :home
  # map.resources :contact
  # map.root :home
   
  get '/login' => 'sessions#new', :as => 'sign_in'
  get '/logout' => 'sessions#destroy'
  post 'sessions/create' => 'sessions#create'
  get '/home' => 'static#home'
  get '/about' => 'static#about'
  
  resources :users

  get '/shots' => 'shots#index', :as => 'shots'
  get '/projects' => 'projects#index', :as => 'projects'
  
end
