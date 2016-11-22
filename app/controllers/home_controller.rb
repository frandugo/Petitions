class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index, :search]

	def index
		if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
		  @search = Petition.search(params[:q])
		  @petitions = @search.result()
		else
		  @search = Petition.search(params[:q])
		  @petitions = []
		end
  	end
  	def search
	  index
	  render :index
	end
end
