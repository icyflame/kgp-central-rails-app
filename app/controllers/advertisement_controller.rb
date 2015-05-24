class AdvertisementController < ApplicationController
	before_action :authenticate_user!
  def post
  end

  def showad
  end

  def viewall
  end

  def store
  	'''
  	The posted parameters of the Ad will be recieved
  	by this function.
  	'''
  	new_ad = Advt.new

  	user_id = current_user.id

  	new_ad.user_id = user_id
  	new_ad.title = params[:title]
  	new_ad.description = params[:description]
  	new_ad.category = params[:category]

  	if params[:negotiable].to_s == "no"
  		new_ad.negotiable = false
  	end

  	# render plain: new_ad.inspect

  	new_ad.save

  	render plain: "Saved!"

  	# render plain: params.inspect

  end
end
