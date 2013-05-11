LnksyProject::Application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "static_pages#home"
  resources :users
  resources :sessions
  resources :posts
  resources :folders

  match '/home', to: 'static_pages#home'
  # match '/:username' => "users#show", :via => :get
  # match '/:id', to: 'static_pages#home', :as => :user, :via => :get
  # user '/:username', :controller => 'users', :action => 'show'
  match '/:id', :to => "users#show", :as => :user, :via => :get
	# match '/:id', :to => "users#update", :as => :user, :via => :put
	# match '/:id', :to => "users#destroy", :as => :user, :via => :delete
end