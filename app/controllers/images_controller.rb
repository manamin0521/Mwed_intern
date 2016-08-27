class ImagesController < ApplicationController
	def index
		@images = Venue.all.pluck(:image_type).uniq
	end

	def show
		@venue = Venue.find(params[:id])
	end

	def select
		cookies[:selected_venue_id] = params[:id]
		redirect_to venues_path
	end
end
