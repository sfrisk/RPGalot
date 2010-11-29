RPGalot::Application.routes.draw do 
	root :to => 'home#index'
	
	match "login" => "user_sessions#new", :as => "login"
  match "logout" => "user_sessions#destroy", :as => "logout"
 	resources :user_sessions
  resources :character_feats
  resources :weapons
  resources :races
	resources :feats
  resources :deities
  resources :klass_skills
  resources :klass_alignments
  resources :klasses
  resources :alignments
  resources :skills
  resources :abilities
  resources :games
  resources :characters
  resources :campaigns
  resources :memberships
  resources :groups
  resources :users


	#map.connect ':controller/:action/:id'

  #map.connect ':controller/:action/:id.:format'
end
