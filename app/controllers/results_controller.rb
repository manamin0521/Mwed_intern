class ResultsController < ApplicationController
	def index
		@venue = Venue.find(cookies[:selected_venue_id])
	end
end
