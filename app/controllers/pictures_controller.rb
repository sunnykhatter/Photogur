class PicturesController < ApplicationController


	def index
		
		@picture = Picture.all

	end


	def show
 	 @picture = Picture.find(params[:id])


	end

	def new
		@picture = Picture.new
	end


	def create
		
		@picture = Picture.new(params[:picture])

		if @picture.save
			redirect_to pictures_url
		else 
			render :new

		end
		#render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist:#{params[:artist]}"

	end




end