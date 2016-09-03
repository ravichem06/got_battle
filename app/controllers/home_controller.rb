class HomeController < ApplicationController

	layout 'home'
	
  def index
  	@battle = Battle.search(params[:search])
  end
end
