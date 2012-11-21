Hook::Application.routes.draw do
  
  root :to => 'static#home'
   
  get '/login' => 'sessions#new', :as => 'sign_in'
  get '/logout' => 'sessions#destroy'
  
  post 'sessions/create' => 'sessions#create'
  
  get '/home' => 'static#home'
  get '/how_it_works' => 'static#how_it_works'
  get '/our_team' => 'static#our_team'
  
  resources :users
  resources :projects
  resources :shots

  get '/shots' => 'shots#index', :as => 'shots'
  get '/projects' => 'projects#index', :as => 'projects'
  
  get "users/:id", :controller => "users", :action =>"show"
  
  
  # Routes for mockups
  get "/mockups/contractor_signup" => 'mockups#contractor_signup'
  
end
