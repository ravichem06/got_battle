Rails.application.routes.draw do

  

	mount Soulmate::Server, :at => "/autocomplete"

	root 'home#index'

	get 'battles/list'

	get 'battles/count'

  	resources :battles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
