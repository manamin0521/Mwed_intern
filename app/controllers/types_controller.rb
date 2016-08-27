class TypesController < ApplicationController

	def index
	end

	def show
		@venue = Venue.find(params[:id])

    	p cookies[:selected_venue_id]
	end

	def select
		cookies[:selected_venue_id] = params[:id]
		redirect_to venues_path
	end

	def result
		@venue = Venue.new(params[:id])
		redirect_to @result
	end
end
