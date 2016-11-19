class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index, :search]

	def index
		@search = Petition.search(params[:q])
		@petitions = @search.result
  	end
  	def search
	  index
	  render :index
	end
end
