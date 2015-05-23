class RoutingController < ApplicationController
	def index
		if user_signed_in?
			redirect_to users_index_path
		else
			redirect_to '/home/'
		end
	end
end
