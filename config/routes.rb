LnksyProject::Application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "static_pages#home"
  resources :users do
	  resources :folders
	end
  resources :sessions
  # resources :folders
  resources :posts


  # match '/home', to: 'static_pages#home'

  # match '/:name', :to => "folders#show", :as => :name, :via => :get

  # match '/users/show/:id', :to => "users#show", :as => :username, :via => :get

  # match '/:username', :to => "users#show", :as => :username, :via => :get
	# match '/:username', :to => "users#update", :as => :username, :via => :put
	# match '/:username', :to => "users#destroy", :as => :username, :via => :delete
end