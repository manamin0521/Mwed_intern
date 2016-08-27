class KibosController < ApplicationController
	def select
		cookies[:selected_kibo] = params[:id]
		redirect_to venues_path
	end
end

