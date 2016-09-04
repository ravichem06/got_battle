Rails.application.routes.draw do

  

  devise_for :users
	#mount Soulmate::Server, :at => "/autocomplete"

	root 'home#index'

	get '/list' => 'battles#list', as: :list

	get '/count' => 'battles#count', as: :count

	get '/search' => 'battles#search', :as => :search

	get '/stats' => 'battles#stats', as: :stats


  	resources :battles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
