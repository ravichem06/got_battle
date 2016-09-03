Rails.application.routes.draw do

  

	mount Soulmate::Server, :at => "/autocomplete"

	root 'home#index'

	get '/list' => 'battles#list', as: :list

	get '/count' => 'battles#count', as: :count

	get '/search' => 'battles#search', :as => :search

  	resources :battles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
