class MocApisController < ApplicationController
	layout "plain"
	def show
		render params[:id]
	end
end
