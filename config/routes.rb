Hook::Application.routes.draw do
  
  root :to => 'static#home'
   
  get '/login' => 'sessions#new', :as => 'sign_in'
  get '/logout' => 'sessions#destroy'
  post 'sessions/create' => 'sessions#create'
  get '/home' => 'static#home'
  get '/about' => 'static#about'
  
  resources :users
  resources :projects
  resources :shots

  get '/shots' => 'shots#index', :as => 'shots'
  get '/projects' => 'projects#index', :as => 'projects'
  
  get "users/:id", :controller => "users", :action =>"show"
  
end
