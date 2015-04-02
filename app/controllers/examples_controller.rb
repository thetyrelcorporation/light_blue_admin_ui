class ExamplesController < ApplicationController
	layout :choose_layout

	def show
		render "examples/#{params[:id].split("_").join("/")}"
	end

	def upload
		render json: {status: :success}
	end

	private
	def choose_layout
		if ["special_login"].include?(params[:id])
			"single_widget"
		elsif ["special_error", "special_landing"].include?(params[:id])
			"blank"
		else
			"example"
		end
	end
end
